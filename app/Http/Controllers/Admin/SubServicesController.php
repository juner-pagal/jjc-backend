<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SubServices;
use App\Http\Requests\SubServicesStoreRequest;
use Illuminate\Support\Str;


class SubServicesController extends Controller
{
    /**
     * Display listing of the Services.
     */
    public function index()
    {
        //All Services
        $subservices = SubServices::all();

        //Return Json Response
        return response()->json([
            'service_section' => $subservices
        ],200);
    }

    /**
     * Store a newly created Services Section in database
     * 
     
     */
    // public function AddServicesSection(SubServicesStoreRequest $request)
    // {
        
    //     try{
    //         // $imageName = Str::random(32).".".$request->services_image->getClientOriginalExtension();
            
    //         //Create Services
    //         SubServices::create([
    //             'services_id' => $request->services_id,
    //             'services_name' => $request->services_name,
    //             'subservices' => $request->subservices,
    //             'services_desc' => $request->services_desc
    //         ]);
    //         /**
    //          * Save Image in Storage folder
    //          */
    //         // Storage::disk('public')->put($imageName, file_get_contents($request->services_image));

    //         //Return Json Response
    //         return response()->json([
    //             'message' => "Services Section Successfully created."
    //         ],200);

    //     } catch (\Exception $e){
    //         //Return Json Response
    //         return response()->json([
    //             'message' => "Something went wrong!"
    //         ],500);
    //     }
    // }

    public function store(SubServicesStoreRequest $request)
    {

        try{
                     
            //Create Services Section
            SubServices::create([
                'services_id' => $request->services_id,
                'services_name' => $request->services_name,
                'subservices' => $request->subservices,
                'subservices_desc' => $request->subservices_desc,
            ]);
            //Return Json Response
            return response()->json([
                'message' => "Services Section Successfully created."
            ],200);

        } catch (\Exception $e){
            //Return Json Response
            return response()->json([
                'message' => "Something went wrong!"
            ],500);
        }
    }

    public function show($id)
    {
        //Services Detail
        $subservices = SubServices::find($id);
       if(!$subservices){
         return response()->json([
            'message'=>'Services Not Found.'
         ],404);
       }
      
       // Return Json Response
       return response()->json([
          'services_section' => $subservices
       ],200);
    }

    public function update(ServicesStoreRequest $request, $id)
    {
        try {
            // Find product
            $services = Services::find($id);
            if(!$services){
              return response()->json([
                'message'=>'Services Not Found.'
              ],404);
            }
      
            //echo "request : $request->image";
            $services->services_name = $request->services_name;
            $services->services_caption = $request->services_caption;
            $services->services_desc = $request->services_desc;
      
            if($request->services_image) {
 
                // Public storage
                $storage = Storage::disk('public');
      
                // Old iamge delete
                if($storage->exists($services->services_image))
                    $storage->delete($services->services_image);
      
                // Image name
                $imageName = Str::random(32).".".$request->services_image->getClientOriginalExtension();
                $services->services_image = $imageName;
      
                // Image save in public folder
                $storage->put($imageName, file_get_contents($request->services_image));
            }
      
            // Update Services
            $services->save();
      
            // Return Json Response
            return response()->json([
                'message' => "Services successfully updated."
            ],200);
        } catch (\Exception $e) {
            // Return Json Response
            return response()->json([
                'message' => "Something went wrong!"
            ],500);
        }
    }

    public function destroy($id)
    {
        // Detail 
        $services = Services::find($id);
        if(!$services){
          return response()->json([
             'message'=>'Services Not Found.'
          ],404);
        }
      
        // Public storage
        $storage = Storage::disk('public');
      
        // Image delete
        if($storage->exists($services->services_image))
            $storage->delete($services->services_image);
      
        // Delete Product
        $services->delete();
      
        // Return Json Response
        return response()->json([
            'message' => "Services successfully deleted."
        ],200);
    }

}
