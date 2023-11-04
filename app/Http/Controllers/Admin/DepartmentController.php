<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Interfaces\Admin\CategoryRepositoryInterface;
use App\Models\Category;
use App\Models\City;
use App\Models\Department;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;

class DepartmentController extends Controller
{
    //protected $categoryRepository;
//    public function __construct(CategoryRepositoryInterface $categoryRepository)
//    {
//        $this->categoryRepository = $categoryRepository;
//    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $departments = Department::get();
        return view('cp.departments.index',compact('departments'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    public function storeMainCat(Request $request)
    {
        $this->validate($request,[
            'ar_name' => 'required|unique:categories',
            'en_name' => 'required|unique:categories',
            'image' => 'required'
        ]);
        $this->categoryRepository->storeMainCat($request);
        $this->index();
    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            'image' => 'required',

        ]);
        $add                    = new Category();
        $add->name              = $request->name;
        $add->image             = $request->image;
        $add->department_id     = 2;
        $add->save();
        session()->flash('insert_message','تمت العملية بنجاح');
        return back()->with('success','City added successfully');

    }


    public function editDepartment(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
        ],[
            'name.required' => 'Arabic text is required',
        ]);
        $c=Department::where('id', $request->model_id)->first();
        $c->update($request->all());

        session()->flash('insert_message','تمت العملية بنجاح');
        return back()->with('success','Country updated successfully');
    }

    public function editDepartmentStatus(Request $request,$id)
    {
        $cat=Department::where("id",$id)->first();
        if($cat->active == 1){
            Department::where("id",$id)
                ->update(["active" => 0 ]);
        }else{
            Department::where("id",$id)
                ->update(["active" => 1 ]);
        }
        return back();
    }

}
