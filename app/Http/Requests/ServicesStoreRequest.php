<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ServicesStoreRequest extends FormRequest
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
                'services_name' => 'required|string|max:258',
                'services_caption' => 'required|string|max:258',
                'services_desc' => 'required|string',
                'services_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|2048'
            ];
        }else{
            return [
                'services_name' => 'required|string|max:258',
                'services_caption' => 'required|string|max:258',
                'services_desc' => 'required|string',
                'services_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|2048'
            ];
        }
    }

    public function messages()
    {
        if(request()->isMethod('post')) {
            return [
            'services_name.required' => 'Services Name is required!',
            'services_caption.required' => 'You must input caption!',
            'services_desc.required' => 'Description is required!',
            'services_image.required' => 'Image is required!'
            ];
        }else{
            return [
                'services_name.required' => 'Services Name is required!',
                'services_caption.required' => 'You must input caption!',
                'services_desc.required' => 'Descritpion is required!'
            ]; 
        }
    } 
}
