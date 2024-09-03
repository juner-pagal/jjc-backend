<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SubServicesStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        // return false;
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        if(request()->isMethod('post')){
            return [

            'services_id' => 'string',
            'services_name' => 'required|string|max:258',
            'subservices' => 'required|string',
            'subservices_desc' => 'required|string'
                // 'services_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg'
            ];
        }else{
            return [
            
            'services_id' => 'string',
            'services_name' => 'required|string|max:258',
            'subservices' => 'required|string',
            'subservices_desc' => 'required|string'
                // 'services_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg'
            ];
        }
    }

    public function messages()
    {
        if(request()->isMethod('post')) {
            return [
            'services_id' =>'',
            'services_name.required' => 'Services Name is required!',
            'subservices.required' => 'You must input caption!',
            'subservices_desc.required' => 'Description is required!'
           
            ];
        }else{
            return [
            'services_id' =>'',
            'services_name.required' => 'Services Name is required!',
            'subservices.required' => 'You must input caption!',
            'subservices_desc.required' => 'Description is required!'
            ]; 
        }
    } 
    
}
