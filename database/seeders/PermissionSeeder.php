<?php

namespace Database\Seeders;

use App\Models\Admin;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::updateOrCreate([
            'name' => "Super Admin",
            'guard_name' => "admin",
        ]);
        $data = [
            [
                'name' => 'الرئيسية',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'المشرفين',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'اضافة مشرف',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل مشرف',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'حذف مشرف',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفعيل مشرف',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'الدول',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل دولة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفعيل دولة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'المدن',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'اضافة مدينة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل مدينة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفعيل مدينة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'المناطق',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'اضافة منطقة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل منطقة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفعيل منطقة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'العملاء',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إشتراكات العميل',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'طلبات العميل',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفاصيل المحفظة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل إنتهاء الإشتراك',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إيقاف العميل',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'المناديب',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إضافة مندوب',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل مندوب',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفعيل مندوب',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'طلبات المندوب',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'السائقين',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إضافة سائق',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل سائق',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفعيل سائق',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'طلبات سائق',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إشتراكات العملاء',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'الطلبات',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'طباعة الطلب',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفاصيل الطلب',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تغيير حالة الطلب',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'المندوب الخاص الطلب',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'السائق الخاص الطلب',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'الكوبونات',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إضافة كوبون',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل كوبون',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'الباقات',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إضافة باقة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل باقة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفعيل باقة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'tags',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إضافة tag',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل tag',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'حذف tag',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفعيل tag',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'الطبخات',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إضافة طبخة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل طبخة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إضافة صورة للطبخة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفاصيل الطبخة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'جدولة الطبخات',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إضافة طبخة للجدولة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل جدولة طبخة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'حذف جدولة طبخة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفاصيل جدولة الطبخة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'فترات التوصيل',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إضافة فترة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل فترة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفعيل فترة',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'الشاشات الترحيبية',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'إضافة شاشة ترحيبية',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل شاشة ترحيبية',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'حذف شاشة ترحيبية',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تواصل معنا',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل حالة تواصل معنا',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'اضف ملاحظة تواصل معنا',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'الشروط و الأحكام',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل الشروط و الأحكام',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'عن التطبيق',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل عن التطبيق',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'طرق الدفع',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل طرق الدفع',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تفعيل طرق الدفع',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'الإعدادات',
                'guard_name' => 'admin',
            ],
            [
                'name' => 'تعديل الإعدادات',
                'guard_name' => 'admin',
            ],
        ];
        foreach ($data as $row){
            Permission::updateOrCreate($row);
        }
        $user = Admin::whereEmail('admin@admin.com')->first();
        $user->givePermissionTo(Permission::pluck('name')->toArray());
    }
}
