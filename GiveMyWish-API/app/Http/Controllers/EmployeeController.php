<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;
use Throwable;

class EmployeeController extends Controller
{
    public function index ($id = null){
        if ($id == null){
            return Employee::orderBy('Prénom', 'asc')->get();
        } else {
            return Employee::find($id);
        }
    }

    public function create (Request $request){
        try{
            $employee = new Employee();
            $employee->Nom = $request->input('Nom');
            $employee->Prénom = $request->input('Prénom');
            $employee->Naissance = $request->input('Naissance');
            $employee->EtatCivil = $request->input('EtatCivil');
            $employee->Email= $request->input('Email');
            $employee->Phone = $request->input('Phone');
            $employee->Image = $request->input('Image');
            
            
            $employee->save();
            return $employee;

        } catch (Throwable $error){
            return $error->getMessage();
        }
    }

    public function update($id, Request $request){
        try{
            $employee = Employee::find($id);
            if($employee){
                $employee->Nom    = $request->input('Nom');
                $employee->Prénom = $request->input('Prénom');
                $employee->Naissance = $request->input('Naissance');
                $employee->EtatCivil = $request->input('EtatCivil');
                $employee->Email= $request->input('Email');
                $employee->Phone = $request->input('Phone');
                $employee->Image = $request->input('Image');
            
            $employee->save();
            return $employee;
            } else{
                return 'Data not found';
            }           

        } catch (Throwable $error){
            return $error->getMessage();
        }
    }

    public function delete($id){
        try{
            $employee = Employee::find($id);
            if($employee){
                $employee->delete();
                return $employee;
            } else{
                return 'Data not found';
            }
            
        } catch (Throwable $error){
            return $error->getMessage();
        }
    }
}
