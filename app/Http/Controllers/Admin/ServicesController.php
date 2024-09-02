<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Services;
use App\Models\SubServices;
use App\Models\SubServicesDetails;
use App\Http\Requests\ServicesStoreRequest;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;


class ServicesController extends Controller
{
    public function AllServices(){
        $services = Services::all();
        $servicesDetailsArray = [];

        foreach ($services as $value) {
            $subservices = SubServices::where('services_name', $value['services_name'])->get();
            $subservicesdetails = SubServicesDetails::where('subservices_name', $value['services_name'])->get();

            $item = [
                'services_name' => $value['services_name'],
                'services_caption' => $value['services_caption'],
                'services_desc' => $value['services_desc'],
                'services_image' => $value['services_image'],
                 'subservices_name' => $subservices,
                'subservicesdetails_name' => $subservicesdetails
            ];

            array_push($servicesDetailsArray, $item);
        }

        return $servicesDetailsArray;
    }//end of method

    public function Strategy(){
        // Define your criteria
        $criteria = 'Strategy';
        
        // Fetch the single value from the database
        $value = Services::where('services_name', $criteria)->get();

        // Return or use the value
        return response()->json($value);
    }
    ///////SubStrategy
    public function StrategySub(){
        // Define your criteria
        $criteria = 'Strategy';
        
        // Fetch the data value from the database
        $value = SubServices::where('services_name', $criteria)->get();

        // Return or use the value
        return response()->json($value);
    }

    ///////SubStrategy
    public function StrategySubDetails(){
        // Define your criteria
        $criteria = 'Strategy';
        
        // Fetch the data value from the database
        $value = SubServicesDetails::where('subservices_name', $criteria)->get();

        // Return or use the value
        return response()->json($value);
    }

    /**
     * Display listing of the Services.
     */
    public function index()
    {
        //All Services
        $services = Services::all();

        //Return Json Response
        return response()->json([
            'services' => $services
        ],200);
    }

    /**
     * Store a newly created Services in database
     */
    public function store(ServicesStoreRequest $request)
    {
        
        try{
            $imageName = Str::random(32).".".$request->services_image->getClientOriginalExtension();
            
            //Create Services
            Services::create([
                'services_name' => $request->services_name,
                'services_caption' => $request->services_caption,
                'services_desc' => $request->services_desc,
                'services_image' => $imageName
            ]);
            /**
             * Save Image in Storage folder
             */
            Storage::disk('public')->put($imageName, file_get_contents($request->services_image));

            //Return Json Response
            return response()->json([
                'message' => "Services Successfully created."
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
        $services = Services::find($id);
       if(!$services){
         return response()->json([
            'message'=>'Services Not Found.'
         ],404);
       }
      
       // Return Json Response
       return response()->json([
          'services' => $services
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




