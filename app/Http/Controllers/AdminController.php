<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Admin;

class AdminController extends Controller
{
    public function login(Request $request)
    {
        $errors = "";
        if ($request->isMethod('post')) {
            $input = [
                'username' => $request->input('username'),
                'password' => $request->input('password')
            ];
            $queryAdmin = Admin::where('username',$input['username'])->first();
            if (!empty($queryAdmin)) {
                if ($input['password'] == $queryAdmin->password) {
                   return redirect('admin/index');
                } else {
                    $errors = "Wrong password, try again!";
                }
            } else {
                $errors = "Username doesn't exist, try again!";
            }
        }
        return view('admin/login',['errors' => $errors]);
    }

    public function index()
    {
        return view('admin/index');
    }

    public function dashboard()
    {
        return view('admin/dashboard');
    }

    public function list()
    {
        $listAdmin = Admin::where('level',0)->get();
        return view('admin/list',['listAdmin' => $listAdmin]);
    }

    public function add(Request $request)
    {
        $errors = "";
        if ($request->isMethod('post')) {
            $input = [
                'username' => $request->input('username'),
                'password' => $request->input('password'),
                'fullname' => $request->input('fullname'),
                'email' => $request->input('email'),
                'phone' => $request->input('phone'),
                'address' => $request->input('address'),
                'image' => $request->input('image'),
                'level' => $request->input('level')
            ];
            dd($input);
            if ($input['username'] != '' && $input['password'] != '' && $input['email'] != '' && $input['phone'] != '') {
                $queryAdmin = Admin::where('username',$input['username'])->first();
                if (empty($queryAdmin)) {
                    $queryAdmin = Admin::where('email',$input['email'])->first();
                    if (empty($queryAdmin)) {
                        
                        $insetAdmin = Admin::create($input);
                        return redirect('admin/list');
                    } else {
                        $errors = "Email is already exist, try again!";
                    }
                } else {
                    $errors = "Username is already exist, try again!";
                }
            } else {
                $errors = "Please fill all requireds fields in form!";
            }
        }
        return view('admin/add',['errors' => $errors]);
    }
}
