<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TeamMembersRequest extends FormRequest
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
                'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
                'name' => 'required|string|max:258',
                'position' => 'required|string|max:258',
                'desc' => 'required|string',
                
            ];
        }else{
            return [
                'name' => 'required|string|max:258',
                'position' => 'required|string|max:258',
                'desc' => 'required|string',
                
            ];
        }
    }

    public function messages()
    {
        if(request()->isMethod('post')) {
            return [
            'image.required' => 'Image is required!',
            'name.required' => 'Services Name is required!',
            'position.required' => 'You must input caption!',
            'desc.required' => 'Description is required!',
            
            ];
        }else{
            return [
                'name.required' => 'Services Name is required!',
                'position.required' => 'You must input caption!',
                'desc.required' => 'Descritpion is required!'
            ]; 
        }
    } 
}
