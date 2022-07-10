import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_client/supabase.dart';

class ProductController extends GetxController {
  final supabase = SupabaseClient('https://cdntsfpjlmkpwpfjzkas.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNkbnRzZnBqbG1rcHdwZmp6a2FzIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY1NzQ3MDA3MCwiZXhwIjoxOTczMDQ2MDcwfQ.oIB4gw_wWC4NCnyNLaJ2a_RrhsiWSZ6UKkgKACEzRh8');

  Future getDataProduct() async {
    final res = await supabase.from('cities').select().execute();

    final data = res.data;
    final error = res.error;
  }
}
