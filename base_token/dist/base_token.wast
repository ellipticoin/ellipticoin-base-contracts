(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32 i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i64) (result i32)))
  (type (;9;) (func (param i32 i32 i64) (result i32)))
  (type (;10;) (func (param i32 i32 i32)))
  (type (;11;) (func (param f32) (result i32)))
  (type (;12;) (func (param i32) (result f32)))
  (type (;13;) (func (param i32) (result i64)))
  (type (;14;) (func (param i32 i64)))
  (type (;15;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i32 f32)))
  (type (;17;) (func (param i32 f64)))
  (type (;18;) (func (param i32 i32 i32 i32 i32)))
  (type (;19;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "env" "_get_memory" (func $_get_memory (type 4)))
  (import "env" "_set_memory" (func $_set_memory (type 5)))
  (import "env" "_sender" (func $_sender (type 6)))
  (func $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_i64::h062b666eea9f662c (type 8) (param i32 i64) (result i32)
    block  ;; label = @1
      get_local 1
      i64.const -1
      i64.le_s
      br_if 0 (;@1;)
      get_local 0
      i32.const 0
      get_local 1
      call $<serde_cbor::ser::Serializer<W>>::write_u64::ha2ed4c26f5114e52
      return
    end
    get_local 0
    i32.const 1
    get_local 1
    i64.const -1
    i64.xor
    call $<serde_cbor::ser::Serializer<W>>::write_u64::ha2ed4c26f5114e52)
  (func $<serde_cbor::ser::Serializer<W>>::write_u64::ha2ed4c26f5114e52 (type 9) (param i32 i32 i64) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 3
    set_global 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                get_local 2
                i64.const 4294967295
                i64.gt_u
                br_if 0 (;@6;)
                get_local 2
                i32.wrap/i64
                tee_local 4
                i32.const 65535
                i32.gt_u
                br_if 1 (;@5;)
                get_local 4
                i32.const 65535
                i32.and
                i32.const 255
                i32.gt_u
                br_if 2 (;@4;)
                get_local 4
                i32.const 255
                i32.and
                i32.const 23
                i32.gt_u
                br_if 3 (;@3;)
                get_local 3
                get_local 1
                i32.const 5
                i32.shl
                get_local 4
                i32.or
                i32.store8 offset=24
                get_local 3
                i32.const 8
                i32.add
                get_local 0
                i32.load
                i32.load
                get_local 3
                i32.const 24
                i32.add
                i32.const 1
                call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
                br 4 (;@2;)
              end
              get_local 3
              get_local 1
              i32.const 5
              i32.shl
              i32.const 27
              i32.or
              i32.store8 offset=8
              get_local 3
              get_local 2
              i64.const 56
              i64.shl
              get_local 2
              i64.const 40
              i64.shl
              i64.const 71776119061217280
              i64.and
              i64.or
              get_local 2
              i64.const 24
              i64.shl
              i64.const 280375465082880
              i64.and
              get_local 2
              i64.const 8
              i64.shl
              i64.const 1095216660480
              i64.and
              i64.or
              i64.or
              get_local 2
              i64.const 8
              i64.shr_u
              i64.const 4278190080
              i64.and
              get_local 2
              i64.const 24
              i64.shr_u
              i64.const 16711680
              i64.and
              i64.or
              get_local 2
              i64.const 40
              i64.shr_u
              i64.const 65280
              i64.and
              get_local 2
              i64.const 56
              i64.shr_u
              i64.or
              i64.or
              i64.or
              i64.store offset=9 align=1
              get_local 3
              i32.const 24
              i32.add
              get_local 0
              i32.load
              i32.load
              get_local 3
              i32.const 8
              i32.add
              i32.const 9
              call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
              get_local 3
              i32.const 24
              i32.add
              call $<core::result::Result<T, E>>::map_err::h1665158e6e9d98be
              set_local 4
              br 4 (;@1;)
            end
            get_local 3
            get_local 1
            i32.const 5
            i32.shl
            i32.const 26
            i32.or
            i32.store8 offset=24
            get_local 3
            get_local 4
            i32.const 24
            i32.shl
            get_local 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            get_local 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            get_local 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=25 align=1
            get_local 3
            i32.const 8
            i32.add
            get_local 0
            i32.load
            i32.load
            get_local 3
            i32.const 24
            i32.add
            i32.const 5
            call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
            get_local 3
            i32.const 8
            i32.add
            call $<core::result::Result<T, E>>::map_err::h1665158e6e9d98be
            set_local 4
            br 3 (;@1;)
          end
          get_local 3
          get_local 1
          i32.const 5
          i32.shl
          i32.const 25
          i32.or
          i32.store8 offset=24
          get_local 3
          get_local 4
          i32.const 24
          i32.shl
          get_local 4
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          i32.const 16
          i32.shr_u
          i32.store16 offset=25 align=1
          get_local 3
          i32.const 8
          i32.add
          get_local 0
          i32.load
          i32.load
          get_local 3
          i32.const 24
          i32.add
          i32.const 3
          call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
          get_local 3
          i32.const 8
          i32.add
          call $<core::result::Result<T, E>>::map_err::h1665158e6e9d98be
          set_local 4
          br 2 (;@1;)
        end
        get_local 3
        get_local 4
        i32.store8 offset=25
        get_local 3
        get_local 1
        i32.const 5
        i32.shl
        i32.const 24
        i32.or
        i32.store8 offset=24
        get_local 3
        i32.const 8
        i32.add
        get_local 0
        i32.load
        i32.load
        get_local 3
        i32.const 24
        i32.add
        i32.const 2
        call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
      end
      get_local 3
      i32.const 8
      i32.add
      call $<core::result::Result<T, E>>::map_err::h1665158e6e9d98be
      set_local 4
    end
    get_local 3
    i32.const 32
    i32.add
    set_global 0
    get_local 4)
  (func $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_str::h0637922bc073507c (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 0
    i32.const 3
    get_local 2
    i64.extend_u/i32
    call $<serde_cbor::ser::Serializer<W>>::write_u64::ha2ed4c26f5114e52
    tee_local 4
    i32.store offset=4
    block  ;; label = @1
      get_local 4
      br_if 0 (;@1;)
      get_local 3
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::ha51185cb46cba9bc
      get_local 3
      i32.const 8
      i32.add
      get_local 0
      i32.load
      i32.load
      get_local 1
      get_local 2
      call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
      get_local 3
      i32.const 8
      i32.add
      call $<core::result::Result<T, E>>::map_err::h1665158e6e9d98be
      set_local 4
    end
    get_local 3
    i32.const 16
    i32.add
    set_global 0
    get_local 4)
  (func $core::ptr::real_drop_in_place::ha51185cb46cba9bc (type 0) (param i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      get_local 0
      i32.load
      tee_local 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          get_local 1
          i32.load offset=8
          tee_local 2
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          get_local 2
          br_if 1 (;@2;)
          get_local 1
          i32.const 12
          i32.add
          call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
          br 1 (;@2;)
        end
        get_local 1
        i32.const 12
        i32.add
        i32.load8_u
        i32.const 2
        i32.lt_u
        br_if 0 (;@2;)
        get_local 1
        i32.const 16
        i32.add
        tee_local 2
        i32.load
        tee_local 1
        i32.load
        get_local 1
        i32.load offset=4
        i32.load
        call_indirect 0
        block  ;; label = @3
          get_local 1
          i32.load offset=4
          tee_local 3
          i32.load offset=4
          tee_local 4
          i32.eqz
          br_if 0 (;@3;)
          get_local 1
          i32.load
          get_local 4
          get_local 3
          i32.load offset=8
          call $__rust_dealloc
        end
        get_local 2
        i32.load
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      get_local 0
      i32.load
      i32.const 24
      i32.const 8
      call $__rust_dealloc
    end)
  (func $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909 (type 3) (param i32 i32 i32 i32)
    get_local 1
    get_local 2
    get_local 3
    call $<alloc::vec::Vec<T>>::extend_from_slice::h1d5a85b5a69f482f
    get_local 0
    i32.const 3
    i32.store8)
  (func $<core::result::Result<T, E>>::map_err::h1665158e6e9d98be (type 4) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    block  ;; label = @1
      get_local 0
      i32.load8_u
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      get_local 1
      i32.const 16
      i32.add
      set_global 0
      i32.const 0
      return
    end
    get_local 1
    get_local 0
    i64.load align=4
    i64.store offset=8
    get_local 1
    i32.const 8
    i32.add
    call $serde_cbor::error::Error::io::hc91b95eae4583022
    set_local 0
    get_local 1
    i32.const 16
    i32.add
    set_global 0
    get_local 0)
  (func $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_bool::h15978293e3402c0b (type 2) (param i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const -11
    i32.const -12
    get_local 1
    select
    i32.store8 offset=15
    get_local 2
    get_local 0
    i32.load
    i32.load
    get_local 2
    i32.const 15
    i32.add
    i32.const 1
    call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
    get_local 2
    call $<core::result::Result<T, E>>::map_err::h1665158e6e9d98be
    set_local 0
    get_local 2
    i32.const 16
    i32.add
    set_global 0
    get_local 0)
  (func $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_unit::hd5689c21dc3d9c18 (type 4) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    i32.const 8
    i32.add
    get_local 0
    i32.load
    i32.load
    i32.const 1048585
    i32.const 1
    call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
    get_local 1
    i32.const 8
    i32.add
    call $<core::result::Result<T, E>>::map_err::h1665158e6e9d98be
    set_local 0
    get_local 1
    i32.const 16
    i32.add
    set_global 0
    get_local 0)
  (func $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_bytes::h6a8e378d93a4f578 (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 0
    i32.const 2
    get_local 2
    i64.extend_u/i32
    call $<serde_cbor::ser::Serializer<W>>::write_u64::ha2ed4c26f5114e52
    tee_local 4
    i32.store offset=4
    block  ;; label = @1
      get_local 4
      br_if 0 (;@1;)
      get_local 3
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::ha51185cb46cba9bc
      get_local 3
      i32.const 8
      i32.add
      get_local 0
      i32.load
      i32.load
      get_local 1
      get_local 2
      call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
      get_local 3
      i32.const 8
      i32.add
      call $<core::result::Result<T, E>>::map_err::h1665158e6e9d98be
      set_local 4
    end
    get_local 3
    i32.const 16
    i32.add
    set_global 0
    get_local 4)
  (func $serde_cbor::ser::to_vec::h1c0b9498e35b63cc (type 5) (param i32 i32)
    (local i32 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 2
    set_global 0
    i32.const 0
    set_local 3
    get_local 2
    i32.const 0
    i32.store offset=8
    get_local 2
    i64.const 1
    i64.store
    get_local 2
    get_local 2
    i32.store offset=20
    get_local 2
    i32.const 0
    i32.store8 offset=28
    get_local 2
    get_local 2
    i32.const 20
    i32.add
    i32.store offset=24
    get_local 2
    get_local 1
    get_local 2
    i32.const 24
    i32.add
    call $<serde_cbor::value::value::Value as serde::ser::Serialize>::serialize::h974bc66b27e879c7
    tee_local 1
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        get_local 1
        i32.store offset=4
        get_local 2
        call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
        i32.const 1
        set_local 3
        br 1 (;@1;)
      end
      get_local 2
      i32.const 16
      i32.add
      call $core::ptr::real_drop_in_place::ha51185cb46cba9bc
      get_local 0
      i32.const 12
      i32.add
      get_local 2
      i32.const 8
      i32.add
      i32.load
      i32.store
      get_local 0
      get_local 2
      i64.load
      i64.store offset=4 align=4
    end
    get_local 0
    get_local 3
    i32.store
    get_local 2
    i32.const 32
    i32.add
    set_global 0)
  (func $<serde_cbor::value::value::Value as serde::ser::Serialize>::serialize::h974bc66b27e879c7 (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 f64 f32 i64 i32 i32 i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      get_local 0
                                      i32.load8_u
                                      i32.const -1
                                      i32.add
                                      tee_local 3
                                      i32.const 7
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      block  ;; label = @18
                                        get_local 3
                                        br_table 0 (;@18;) 2 (;@16;) 3 (;@15;) 4 (;@14;) 5 (;@13;) 7 (;@11;) 8 (;@10;) 9 (;@9;) 0 (;@18;)
                                      end
                                      get_local 1
                                      get_local 0
                                      i32.const 8
                                      i32.add
                                      i64.load
                                      call $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_i64::h062b666eea9f662c
                                      set_local 3
                                      br 16 (;@1;)
                                    end
                                    get_local 1
                                    i32.const 0
                                    get_local 0
                                    i32.const 8
                                    i32.add
                                    i64.load
                                    call $<serde_cbor::ser::Serializer<W>>::write_u64::ha2ed4c26f5114e52
                                    set_local 3
                                    br 15 (;@1;)
                                  end
                                  get_local 1
                                  get_local 0
                                  i32.const 4
                                  i32.add
                                  i32.load
                                  get_local 0
                                  i32.const 12
                                  i32.add
                                  i32.load
                                  call $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_bytes::h6a8e378d93a4f578
                                  set_local 3
                                  br 14 (;@1;)
                                end
                                get_local 1
                                get_local 0
                                i32.const 4
                                i32.add
                                i32.load
                                get_local 0
                                i32.const 12
                                i32.add
                                i32.load
                                call $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_str::h0637922bc073507c
                                set_local 3
                                br 13 (;@1;)
                              end
                              get_local 0
                              i32.const 4
                              i32.add
                              i32.load
                              set_local 4
                              get_local 2
                              get_local 1
                              i32.const 4
                              get_local 0
                              i32.const 12
                              i32.add
                              i32.load
                              tee_local 3
                              call $<serde_cbor::ser::Serializer<W>>::serialize_collection::h6e11ce7e09e3da1d
                              get_local 2
                              i32.load
                              i32.const 1
                              i32.eq
                              br_if 1 (;@12;)
                              get_local 3
                              i32.const 4
                              i32.shl
                              set_local 5
                              get_local 2
                              i32.const 8
                              i32.add
                              i32.load8_u
                              set_local 1
                              get_local 2
                              i32.load offset=4
                              set_local 0
                              block  ;; label = @14
                                loop  ;; label = @15
                                  get_local 5
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  get_local 2
                                  get_local 4
                                  get_local 0
                                  call $<serde_cbor::value::value::Value as serde::ser::Serialize>::serialize::h974bc66b27e879c7
                                  tee_local 3
                                  i32.store
                                  get_local 3
                                  br_if 14 (;@1;)
                                  get_local 5
                                  i32.const -16
                                  i32.add
                                  set_local 5
                                  get_local 4
                                  i32.const 16
                                  i32.add
                                  set_local 4
                                  get_local 2
                                  call $core::ptr::real_drop_in_place::ha51185cb46cba9bc
                                  br 0 (;@15;)
                                end
                              end
                              get_local 0
                              get_local 1
                              i32.const 255
                              i32.and
                              i32.const 0
                              i32.ne
                              call $<serde_cbor::ser::CollectionSerializer<'a, W>>::end_inner::hd61aa081d37f5d64
                              set_local 3
                              br 12 (;@1;)
                            end
                            get_local 2
                            get_local 0
                            i32.const 4
                            i32.add
                            tee_local 6
                            i32.store offset=40
                            get_local 2
                            get_local 6
                            i32.load
                            i32.store offset=36
                            get_local 2
                            get_local 0
                            i32.const 8
                            i32.add
                            tee_local 3
                            i32.load
                            i32.store offset=32
                            get_local 2
                            get_local 2
                            i32.const 32
                            i32.add
                            call $alloc::collections::btree::map::first_leaf_edge::he84ea2eaad1a0beb
                            get_local 3
                            i32.load
                            set_local 3
                            get_local 6
                            set_local 4
                            block  ;; label = @13
                              loop  ;; label = @14
                                get_local 4
                                i32.load
                                tee_local 4
                                i32.load16_u offset=6
                                set_local 5
                                get_local 3
                                i32.eqz
                                br_if 1 (;@13;)
                                get_local 3
                                i32.const -1
                                i32.add
                                set_local 3
                                get_local 4
                                get_local 5
                                i32.const 2
                                i32.shl
                                i32.add
                                i32.const 360
                                i32.add
                                set_local 4
                                br 0 (;@14;)
                              end
                            end
                            get_local 2
                            i32.const 28
                            i32.add
                            get_local 5
                            i32.store
                            get_local 2
                            i32.const 24
                            i32.add
                            get_local 6
                            i32.store
                            get_local 2
                            i32.const 20
                            i32.add
                            get_local 4
                            i32.store
                            get_local 2
                            i32.const 0
                            i32.store offset=16
                            get_local 2
                            i32.load
                            set_local 7
                            get_local 2
                            i32.load offset=4
                            set_local 5
                            get_local 2
                            i32.load offset=8
                            set_local 8
                            get_local 2
                            i32.load offset=12
                            set_local 6
                            get_local 2
                            get_local 1
                            i32.const 5
                            get_local 0
                            i32.const 12
                            i32.add
                            i32.load
                            tee_local 0
                            call $<serde_cbor::ser::Serializer<W>>::serialize_collection::h6e11ce7e09e3da1d
                            get_local 2
                            i32.load
                            i32.const 1
                            i32.ne
                            br_if 4 (;@8;)
                          end
                          get_local 2
                          i32.load offset=4
                          set_local 3
                          br 10 (;@1;)
                        end
                        get_local 0
                        i32.const 8
                        i32.add
                        f64.load
                        tee_local 9
                        get_local 9
                        f32.demote/f64
                        tee_local 10
                        f64.promote/f32
                        f64.eq
                        br_if 3 (;@7;)
                        get_local 9
                        i64.reinterpret/f64
                        tee_local 11
                        i64.const 9223372036854775807
                        i64.and
                        f64.reinterpret/i64
                        f64.const inf (;=inf;)
                        f64.lt
                        i32.eqz
                        br_if 3 (;@7;)
                        get_local 2
                        i32.const 251
                        i32.store8
                        get_local 2
                        get_local 11
                        i64.const 56
                        i64.shl
                        get_local 11
                        i64.const 40
                        i64.shl
                        i64.const 71776119061217280
                        i64.and
                        i64.or
                        get_local 11
                        i64.const 24
                        i64.shl
                        i64.const 280375465082880
                        i64.and
                        get_local 11
                        i64.const 8
                        i64.shl
                        i64.const 1095216660480
                        i64.and
                        i64.or
                        i64.or
                        get_local 11
                        i64.const 8
                        i64.shr_u
                        i64.const 4278190080
                        i64.and
                        get_local 11
                        i64.const 24
                        i64.shr_u
                        i64.const 16711680
                        i64.and
                        i64.or
                        get_local 11
                        i64.const 40
                        i64.shr_u
                        i64.const 65280
                        i64.and
                        get_local 11
                        i64.const 56
                        i64.shr_u
                        i64.or
                        i64.or
                        i64.or
                        i64.store offset=1 align=1
                        get_local 2
                        i32.const 32
                        i32.add
                        get_local 1
                        i32.load
                        i32.load
                        get_local 2
                        i32.const 9
                        call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
                        get_local 2
                        i32.const 32
                        i32.add
                        call $<core::result::Result<T, E>>::map_err::h1665158e6e9d98be
                        set_local 3
                        br 9 (;@1;)
                      end
                      get_local 1
                      get_local 0
                      i32.load8_u offset=1
                      call $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_bool::h15978293e3402c0b
                      set_local 3
                      br 8 (;@1;)
                    end
                    get_local 1
                    call $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_unit::hd5689c21dc3d9c18
                    set_local 3
                    br 7 (;@1;)
                  end
                  get_local 2
                  i32.const 8
                  i32.add
                  tee_local 12
                  i32.load8_u
                  set_local 13
                  get_local 2
                  i32.load offset=4
                  set_local 1
                  block  ;; label = @8
                    loop  ;; label = @9
                      get_local 0
                      i32.eqz
                      br_if 1 (;@8;)
                      block  ;; label = @10
                        block  ;; label = @11
                          get_local 6
                          get_local 5
                          i32.load16_u offset=6
                          i32.ge_u
                          br_if 0 (;@11;)
                          i32.const 1051504
                          get_local 5
                          i32.const 8
                          i32.add
                          get_local 5
                          i32.const 1049348
                          i32.eq
                          select
                          get_local 6
                          i32.const 4
                          i32.shl
                          tee_local 3
                          i32.add
                          set_local 4
                          get_local 6
                          i32.const 1
                          i32.add
                          set_local 6
                          get_local 5
                          get_local 3
                          i32.add
                          i32.const 184
                          i32.add
                          set_local 14
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            get_local 5
                            i32.load
                            tee_local 4
                            i32.eqz
                            br_if 0 (;@12;)
                            get_local 7
                            i32.const 1
                            i32.add
                            set_local 7
                            get_local 5
                            i64.load16_u offset=4
                            i64.const 32
                            i64.shl
                            get_local 8
                            i64.extend_u/i32
                            i64.or
                            set_local 11
                            br 1 (;@11;)
                          end
                          get_local 8
                          i64.extend_u/i32
                          set_local 11
                          i32.const 0
                          set_local 4
                        end
                        block  ;; label = @11
                          loop  ;; label = @12
                            get_local 11
                            i64.const 32
                            i64.shr_u
                            i32.wrap/i64
                            tee_local 5
                            get_local 4
                            tee_local 3
                            i32.load16_u offset=6
                            i32.lt_u
                            br_if 1 (;@11;)
                            i32.const 0
                            set_local 4
                            get_local 3
                            i32.load
                            tee_local 5
                            i32.eqz
                            br_if 0 (;@12;)
                            get_local 3
                            i64.load16_u offset=4
                            i64.const 32
                            i64.shl
                            get_local 11
                            i64.const 4294967295
                            i64.and
                            i64.or
                            set_local 11
                            get_local 7
                            i32.const 1
                            i32.add
                            set_local 7
                            get_local 5
                            set_local 4
                            br 0 (;@12;)
                          end
                        end
                        get_local 2
                        i32.const 32
                        i32.add
                        i32.const 8
                        i32.add
                        get_local 11
                        i64.store32
                        get_local 2
                        get_local 7
                        i32.const -1
                        i32.add
                        i32.store offset=32
                        get_local 2
                        get_local 3
                        get_local 5
                        i32.const 2
                        i32.shl
                        i32.add
                        i32.const 364
                        i32.add
                        i32.load
                        i32.store offset=36
                        i32.const 1051504
                        get_local 3
                        i32.const 8
                        i32.add
                        get_local 3
                        i32.const 1049348
                        i32.eq
                        select
                        get_local 5
                        i32.const 4
                        i32.shl
                        tee_local 5
                        i32.add
                        set_local 4
                        get_local 3
                        get_local 5
                        i32.add
                        i32.const 184
                        i32.add
                        set_local 14
                        get_local 2
                        get_local 2
                        i32.const 32
                        i32.add
                        call $alloc::collections::btree::map::first_leaf_edge::he84ea2eaad1a0beb
                        get_local 2
                        i32.const 12
                        i32.add
                        i32.load
                        set_local 6
                        get_local 12
                        i32.load
                        set_local 8
                        get_local 2
                        i32.load offset=4
                        set_local 5
                        get_local 2
                        i32.load
                        set_local 7
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                get_local 4
                                i32.load8_u
                                i32.const -1
                                i32.add
                                tee_local 3
                                i32.const 3
                                i32.gt_u
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  get_local 3
                                  br_table 0 (;@15;) 2 (;@13;) 3 (;@12;) 4 (;@11;) 0 (;@15;)
                                end
                                get_local 1
                                get_local 4
                                i32.const 4
                                i32.add
                                i32.load
                                get_local 4
                                i32.const 12
                                i32.add
                                i32.load
                                call $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_bytes::h6a8e378d93a4f578
                                set_local 3
                                br 4 (;@10;)
                              end
                              get_local 1
                              get_local 4
                              i32.const 8
                              i32.add
                              i64.load
                              call $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_i64::h062b666eea9f662c
                              set_local 3
                              br 3 (;@10;)
                            end
                            get_local 1
                            get_local 4
                            i32.const 4
                            i32.add
                            i32.load
                            get_local 4
                            i32.const 12
                            i32.add
                            i32.load
                            call $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_str::h0637922bc073507c
                            set_local 3
                            br 2 (;@10;)
                          end
                          get_local 1
                          get_local 4
                          i32.load8_u offset=1
                          call $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_bool::h15978293e3402c0b
                          set_local 3
                          br 1 (;@10;)
                        end
                        get_local 1
                        call $<&'a mut serde_cbor::ser::Serializer<W> as serde::ser::Serializer>::serialize_unit::hd5689c21dc3d9c18
                        set_local 3
                      end
                      get_local 2
                      get_local 3
                      i32.store
                      get_local 3
                      br_if 3 (;@6;)
                      get_local 2
                      call $core::ptr::real_drop_in_place::ha51185cb46cba9bc
                      get_local 2
                      get_local 14
                      get_local 1
                      call $<serde_cbor::value::value::Value as serde::ser::Serialize>::serialize::h974bc66b27e879c7
                      tee_local 3
                      i32.store offset=32
                      get_local 3
                      br_if 8 (;@1;)
                      get_local 0
                      i32.const -1
                      i32.add
                      set_local 0
                      get_local 2
                      i32.const 32
                      i32.add
                      call $core::ptr::real_drop_in_place::ha51185cb46cba9bc
                      br 0 (;@9;)
                    end
                  end
                  get_local 1
                  get_local 13
                  i32.const 255
                  i32.and
                  i32.const 0
                  i32.ne
                  call $<serde_cbor::ser::CollectionSerializer<'a, W>>::end_inner::hd61aa081d37f5d64
                  set_local 3
                  br 6 (;@1;)
                end
                block  ;; label = @7
                  get_local 10
                  i32.reinterpret/f32
                  tee_local 3
                  i32.const 2147483647
                  i32.and
                  f32.reinterpret/i32
                  f32.const inf (;=inf;)
                  f32.ne
                  br_if 0 (;@7;)
                  get_local 1
                  i32.load
                  i32.load
                  set_local 4
                  get_local 3
                  i32.const -1
                  i32.le_s
                  br_if 2 (;@5;)
                  get_local 2
                  get_local 4
                  i32.const 1048576
                  i32.const 3
                  call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
                  br 5 (;@2;)
                end
                get_local 10
                get_local 10
                f32.ne
                br_if 2 (;@4;)
                get_local 10
                call $half::convert::f32_to_f16::hdeb2ae0ad81fd3cc
                tee_local 4
                call $half::<impl core::convert::From<half::f16> for f32>::from::h7b1a5524fb955309
                get_local 10
                f32.ne
                br_if 3 (;@3;)
                get_local 2
                i32.const 249
                i32.store8 offset=32
                get_local 2
                get_local 4
                i32.const 24
                i32.shl
                get_local 4
                i32.const 8
                i32.shl
                i32.const 16711680
                i32.and
                i32.or
                i32.const 16
                i32.shr_u
                i32.store16 offset=33 align=1
                get_local 2
                get_local 1
                i32.load
                i32.load
                get_local 2
                i32.const 32
                i32.add
                i32.const 3
                call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
                br 4 (;@2;)
              end
              get_local 2
              get_local 3
              i32.store offset=32
              br 4 (;@1;)
            end
            get_local 2
            get_local 4
            i32.const 1048579
            i32.const 3
            call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
            br 2 (;@2;)
          end
          get_local 2
          get_local 1
          i32.load
          i32.load
          i32.const 1048582
          i32.const 3
          call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
          br 1 (;@2;)
        end
        get_local 2
        i32.const 250
        i32.store8 offset=32
        get_local 2
        get_local 3
        i32.const 24
        i32.shl
        get_local 3
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        get_local 3
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        get_local 3
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store offset=33 align=1
        get_local 2
        get_local 1
        i32.load
        i32.load
        get_local 2
        i32.const 32
        i32.add
        i32.const 5
        call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
      end
      get_local 2
      call $<core::result::Result<T, E>>::map_err::h1665158e6e9d98be
      set_local 3
    end
    get_local 2
    i32.const 48
    i32.add
    set_global 0
    get_local 3)
  (func $core::ptr::real_drop_in_place::h55633d7fcf7a8754 (type 0) (param i32)
    get_local 0
    i32.load
    get_local 0
    i32.const 4
    i32.add
    i32.load
    call $<alloc::raw_vec::RawVec<T, A>>::dealloc_buffer::hdfa31298cc5471e8)
  (func $<core::result::Result<V, wasm_rpc::error::ErrorStruct<'static>> as wasm_rpc::response::Responsable>::to_response::hb0adf1fe3d59f3c4 (type 4) (param i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 1
    set_global 0
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.load
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        get_local 0
        i32.load offset=4
        set_local 2
        get_local 1
        i32.const 16
        i32.add
        get_local 0
        i32.const 8
        i32.add
        i32.load
        get_local 0
        i32.const 12
        i32.add
        i32.load
        call $alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned::h6fbdcae70eb63b1d
        get_local 1
        i32.const 32
        i32.add
        i32.const 12
        i32.add
        get_local 1
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        get_local 1
        i32.const 3
        i32.store8 offset=32
        get_local 1
        get_local 1
        i64.load offset=16
        i64.store offset=36 align=4
        get_local 1
        i32.const 16
        i32.add
        get_local 1
        i32.const 32
        i32.add
        call $serde_cbor::ser::to_vec::h1c0b9498e35b63cc
        get_local 1
        get_local 1
        i32.const 16
        i32.add
        call $<core::result::Result<T, E>>::unwrap::h401479143956b260
        get_local 1
        i32.const 32
        i32.add
        call $core::ptr::real_drop_in_place::h01c958b1dd8c4041
        br 1 (;@1;)
      end
      get_local 1
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      get_local 0
      i32.const 16
      i32.add
      i64.load
      i64.store
      get_local 1
      get_local 0
      i32.const 8
      i32.add
      i64.load
      i64.store offset=32
      get_local 1
      i32.const 16
      i32.add
      get_local 1
      i32.const 32
      i32.add
      call $serde_cbor::ser::to_vec::h1c0b9498e35b63cc
      get_local 1
      get_local 1
      i32.const 16
      i32.add
      call $<core::result::Result<T, E>>::unwrap::h401479143956b260
      get_local 1
      i32.const 32
      i32.add
      call $core::ptr::real_drop_in_place::h01c958b1dd8c4041
      i32.const 0
      set_local 2
    end
    get_local 1
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    get_local 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    get_local 1
    get_local 1
    i64.load
    i64.store offset=16
    get_local 1
    get_local 2
    i32.store
    get_local 1
    i32.const 32
    i32.add
    get_local 1
    call $alloc::slice::<impl [T]>::to_vec::h81b946d20507b8f4
    get_local 1
    i32.const 32
    i32.add
    get_local 1
    i32.const 16
    i32.add
    call $<alloc::vec::Vec<T>>::append::h6eb6364c3c8987a4
    get_local 1
    i32.const 32
    i32.add
    call $<alloc::vec::Vec<u8> as wasm_rpc::pointer::Referenceable>::as_pointer::hde9436cae96a7607
    set_local 0
    get_local 1
    i32.const 32
    i32.add
    call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
    get_local 1
    i32.const 16
    i32.add
    call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
    get_local 1
    i32.const 48
    i32.add
    set_global 0
    get_local 0)
  (func $alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned::h6fbdcae70eb63b1d (type 10) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    i32.const 8
    i32.add
    get_local 2
    call $<alloc::raw_vec::RawVec<T, A>>::allocate_in::he70358c668afe104
    get_local 3
    i32.const 0
    i32.store offset=24
    get_local 3
    get_local 3
    i64.load offset=8
    i64.store offset=16
    get_local 3
    i32.const 16
    i32.add
    get_local 1
    get_local 2
    call $<alloc::vec::Vec<T>>::extend_from_slice::h1d5a85b5a69f482f
    get_local 0
    i32.const 8
    i32.add
    get_local 3
    i32.load offset=24
    i32.store
    get_local 0
    get_local 3
    i64.load offset=16
    i64.store align=4
    get_local 3
    i32.const 32
    i32.add
    set_global 0)
  (func $<core::result::Result<T, E>>::unwrap::h401479143956b260 (type 5) (param i32 i32)
    (local i32)
    get_local 1
    i32.const 4
    i32.add
    set_local 2
    block  ;; label = @1
      get_local 1
      i32.load
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      get_local 0
      get_local 2
      i64.load align=4
      i64.store align=4
      get_local 0
      i32.const 8
      i32.add
      get_local 2
      i32.const 8
      i32.add
      i32.load
      i32.store
      return
    end
    i32.const 1048687
    get_local 2
    i32.load
    call $core::result::unwrap_failed::h3c0455058537d067
    unreachable)
  (func $core::ptr::real_drop_in_place::h01c958b1dd8c4041 (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 0
          i32.load8_u
          i32.const -2
          i32.add
          tee_local 1
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              get_local 1
              br_table 0 (;@5;) 1 (;@4;) 3 (;@2;) 4 (;@1;) 0 (;@5;)
            end
            get_local 0
            i32.const 4
            i32.add
            call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
            return
          end
          get_local 0
          i32.const 4
          i32.add
          call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
        end
        return
      end
      get_local 0
      i32.const 4
      i32.add
      tee_local 0
      call $<alloc::vec::Vec<T> as core::ops::drop::Drop>::drop::he243ea68cc50daf9
      get_local 0
      call $<alloc::raw_vec::RawVec<T, A>>::dealloc_buffer::h2080339648c8451d
      return
    end
    get_local 0
    i32.const 4
    i32.add
    call $<alloc::collections::btree::map::BTreeMap<K, V> as core::ops::drop::Drop>::drop::h2a5dac4e76049b5f)
  (func $alloc::slice::<impl [T]>::to_vec::h81b946d20507b8f4 (type 5) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 4
    call $<alloc::vec::Vec<T>>::with_capacity::h9e9190d5727353ee
    get_local 2
    get_local 1
    i32.const 4
    call $<alloc::vec::Vec<T>>::extend_from_slice::h1d5a85b5a69f482f
    get_local 0
    i32.const 8
    i32.add
    get_local 2
    i32.const 8
    i32.add
    i32.load
    i32.store
    get_local 0
    get_local 2
    i64.load
    i64.store align=4
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $<alloc::vec::Vec<T>>::append::h6eb6364c3c8987a4 (type 5) (param i32 i32)
    (local i32 i32)
    get_local 1
    i32.load
    set_local 2
    get_local 0
    get_local 1
    i32.load offset=8
    tee_local 3
    call $<alloc::vec::Vec<T>>::reserve::h06e2b5ac0736880b
    get_local 0
    i32.load
    get_local 0
    i32.load offset=8
    i32.add
    get_local 2
    get_local 3
    call $memcpy
    drop
    get_local 0
    get_local 3
    get_local 0
    i32.load offset=8
    i32.add
    i32.store offset=8
    get_local 1
    i32.const 0
    i32.store offset=8)
  (func $<alloc::vec::Vec<u8> as wasm_rpc::pointer::Referenceable>::as_pointer::hde9436cae96a7607 (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.load
    get_local 0
    i32.load offset=8
    call $alloc::slice::<impl [T]>::to_vec::hc2fbd3e187958cbb
    get_local 1
    get_local 1
    i32.load offset=8
    tee_local 0
    i32.store offset=28
    get_local 1
    i32.const 16
    i32.add
    get_local 1
    i32.const 28
    i32.add
    i32.const 4
    call $alloc::slice::<impl [T]>::to_vec::hc2fbd3e187958cbb
    get_local 1
    i32.load
    set_local 2
    get_local 1
    i32.const 16
    i32.add
    get_local 0
    call $<alloc::vec::Vec<T>>::reserve::h06e2b5ac0736880b
    get_local 1
    i32.load offset=16
    tee_local 3
    get_local 1
    i32.load offset=24
    i32.add
    get_local 2
    get_local 0
    call $memcpy
    drop
    get_local 1
    i32.const 0
    i32.store offset=8
    get_local 1
    call $core::ptr::real_drop_in_place::he33a927f4ac61062
    get_local 1
    i32.const 32
    i32.add
    set_global 0
    get_local 3)
  (func $<alloc::vec::Vec<T>>::with_capacity::h9e9190d5727353ee (type 5) (param i32 i32)
    (local i32 i64)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 8
    i32.add
    get_local 1
    call $<alloc::raw_vec::RawVec<T, A>>::allocate_in::he70358c668afe104
    get_local 2
    i64.load offset=8
    set_local 3
    get_local 0
    i32.const 0
    i32.store offset=8
    get_local 0
    get_local 3
    i64.store align=4
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $<alloc::raw_vec::RawVec<T, A>>::allocate_in::he70358c668afe104 (type 5) (param i32 i32)
    (local i32)
    block  ;; label = @1
      get_local 1
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          get_local 1
          i32.eqz
          br_if 0 (;@3;)
          get_local 1
          i32.const 1
          call $__rust_alloc
          tee_local 2
          br_if 1 (;@2;)
          unreachable
          unreachable
        end
        i32.const 1
        set_local 2
      end
      get_local 0
      get_local 1
      i32.store offset=4
      get_local 0
      get_local 2
      i32.store
      return
    end
    call $<alloc::raw_vec::RawVec<T, A>>::allocate_in::{{closure}}::hc53115b0f3ecf84e
    unreachable)
  (func $<alloc::vec::Vec<T>>::reserve::h06e2b5ac0736880b (type 5) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      get_local 0
      i32.load offset=4
      tee_local 2
      get_local 0
      i32.load offset=8
      tee_local 3
      i32.sub
      get_local 1
      i32.ge_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          get_local 3
          get_local 1
          i32.add
          tee_local 1
          get_local 3
          i32.lt_u
          br_if 0 (;@3;)
          get_local 2
          i32.const 1
          i32.shl
          tee_local 3
          get_local 1
          get_local 1
          get_local 3
          i32.lt_u
          select
          tee_local 1
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              get_local 2
              i32.eqz
              br_if 0 (;@5;)
              get_local 0
              i32.load
              get_local 2
              i32.const 1
              get_local 1
              call $__rust_realloc
              tee_local 2
              i32.eqz
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            get_local 1
            i32.const 1
            call $__rust_alloc
            tee_local 2
            br_if 2 (;@2;)
          end
          unreachable
          unreachable
        end
        call $alloc::raw_vec::capacity_overflow::h1723897ee1c75c11
        unreachable
      end
      get_local 0
      get_local 2
      i32.store
      get_local 0
      i32.const 4
      i32.add
      get_local 1
      i32.store
    end)
  (func $<alloc::vec::Vec<T>>::extend_from_slice::h1d5a85b5a69f482f (type 10) (param i32 i32 i32)
    (local i32)
    get_local 0
    get_local 2
    call $<alloc::vec::Vec<T>>::reserve::h06e2b5ac0736880b
    get_local 0
    get_local 0
    i32.load offset=8
    tee_local 3
    get_local 2
    i32.add
    i32.store offset=8
    get_local 3
    get_local 0
    i32.load
    i32.add
    get_local 2
    get_local 1
    get_local 2
    call $core::slice::<impl [T]>::copy_from_slice::h6683ac0449de7820)
  (func $<serde_cbor::ser::Serializer<W>>::serialize_collection::h6e11ce7e09e3da1d (type 3) (param i32 i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 4
    set_global 0
    get_local 4
    get_local 1
    get_local 2
    get_local 3
    i64.extend_u/i32
    call $<serde_cbor::ser::Serializer<W>>::write_u64::ha2ed4c26f5114e52
    tee_local 2
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        get_local 2
        i32.store offset=4
        i32.const 1
        set_local 2
        br 1 (;@1;)
      end
      get_local 4
      i32.const 12
      i32.add
      call $core::ptr::real_drop_in_place::ha51185cb46cba9bc
      i32.const 0
      set_local 2
      get_local 0
      i32.const 8
      i32.add
      i32.const 0
      i32.store8
      get_local 0
      get_local 1
      i32.store offset=4
    end
    get_local 0
    get_local 2
    i32.store
    get_local 4
    i32.const 16
    i32.add
    set_global 0)
  (func $core::result::unwrap_failed::h3c0455058537d067 (type 5) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 43
    i32.store offset=12
    get_local 2
    get_local 0
    i32.store offset=8
    get_local 2
    get_local 1
    i32.store offset=20
    get_local 2
    i32.const 60
    i32.add
    i32.const 1
    i32.store
    get_local 2
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    get_local 2
    i32.const 2
    i32.store offset=52
    get_local 2
    i64.const 2
    i64.store offset=28 align=4
    get_local 2
    i32.const 1057196
    i32.store offset=24
    get_local 2
    get_local 2
    i32.const 20
    i32.add
    i32.store offset=56
    get_local 2
    get_local 2
    i32.const 8
    i32.add
    i32.store offset=48
    get_local 2
    get_local 2
    i32.const 48
    i32.add
    i32.store offset=40
    get_local 2
    i32.const 24
    i32.add
    i32.const 1057212
    call $core::panicking::panic_fmt::h4f468f2affe6a61e
    unreachable)
  (func $serde_cbor::error::Error::io::hc91b95eae4583022 (type 4) (param i32) (result i32)
    (local i64)
    get_local 0
    i64.load align=4
    set_local 1
    i32.const 24
    call $alloc::alloc::exchange_malloc::h850213703570f63e
    tee_local 0
    get_local 1
    i64.store offset=12 align=4
    get_local 0
    i32.const 1
    i32.store offset=8
    get_local 0
    i64.const 0
    i64.store
    get_local 0)
  (func $<alloc::vec::Vec<T> as core::ops::drop::Drop>::drop::he243ea68cc50daf9 (type 0) (param i32)
    (local i32)
    get_local 0
    i32.load offset=8
    i32.const 4
    i32.shl
    set_local 1
    get_local 0
    i32.load
    set_local 0
    block  ;; label = @1
      loop  ;; label = @2
        get_local 1
        i32.eqz
        br_if 1 (;@1;)
        get_local 1
        i32.const -16
        i32.add
        set_local 1
        get_local 0
        call $core::ptr::real_drop_in_place::h873c8d2a782c39da
        get_local 0
        i32.const 16
        i32.add
        set_local 0
        br 0 (;@2;)
      end
    end)
  (func $<alloc::raw_vec::RawVec<T, A>>::dealloc_buffer::h2080339648c8451d (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      get_local 0
      i32.load offset=4
      tee_local 1
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.load
      get_local 1
      i32.const 4
      i32.shl
      i32.const 8
      call $__rust_dealloc
    end)
  (func $<alloc::collections::btree::map::BTreeMap<K, V> as core::ops::drop::Drop>::drop::h2a5dac4e76049b5f (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32)
    get_global 0
    i32.const 144
    i32.sub
    tee_local 1
    set_global 0
    get_local 0
    i32.load offset=8
    set_local 2
    get_local 0
    i32.load offset=4
    set_local 3
    get_local 0
    i32.load
    set_local 0
    get_local 1
    i32.const 0
    i32.store offset=120
    get_local 1
    get_local 0
    i32.store offset=116
    get_local 1
    get_local 3
    i32.store offset=112
    get_local 1
    i32.const 8
    i32.add
    get_local 1
    i32.const 112
    i32.add
    call $alloc::collections::btree::map::first_leaf_edge::h93c7784cd4365aa5
    block  ;; label = @1
      loop  ;; label = @2
        get_local 0
        i32.load16_u offset=6
        set_local 4
        get_local 3
        i32.eqz
        br_if 1 (;@1;)
        get_local 3
        i32.const -1
        i32.add
        set_local 3
        get_local 0
        get_local 4
        i32.const 2
        i32.shl
        i32.add
        i32.const 360
        i32.add
        i32.load
        set_local 0
        br 0 (;@2;)
      end
    end
    get_local 1
    i32.const 36
    i32.add
    get_local 4
    i32.store
    get_local 1
    i32.const 8
    i32.add
    i32.const 24
    i32.add
    i32.const 0
    i32.store
    get_local 1
    i32.const 28
    i32.add
    get_local 0
    i32.store
    get_local 1
    get_local 2
    i32.store offset=40
    get_local 1
    i32.const 0
    i32.store offset=24
    get_local 1
    i32.const 112
    i32.add
    i32.const 16
    i32.add
    set_local 5
    get_local 1
    i32.const 40
    i32.add
    set_local 6
    get_local 1
    i32.const 8
    i32.add
    i32.const 12
    i32.add
    set_local 7
    get_local 1
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    set_local 8
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          get_local 2
          i32.eqz
          br_if 1 (;@2;)
          get_local 6
          get_local 2
          i32.const -1
          i32.add
          tee_local 2
          i32.store
          get_local 8
          i32.load
          set_local 3
          block  ;; label = @4
            block  ;; label = @5
              get_local 7
              i32.load
              tee_local 4
              get_local 1
              i32.load offset=12
              tee_local 0
              i32.load16_u offset=6
              i32.ge_u
              br_if 0 (;@5;)
              get_local 7
              get_local 4
              i32.const 1
              i32.add
              i32.store
              get_local 8
              get_local 3
              i32.store
              get_local 1
              get_local 0
              i32.store offset=12
              get_local 1
              i32.const 96
              i32.add
              i32.const 8
              i32.add
              tee_local 3
              i32.const 1051504
              get_local 0
              i32.const 8
              i32.add
              get_local 0
              i32.const 1049348
              i32.eq
              select
              get_local 4
              i32.const 4
              i32.shl
              tee_local 4
              i32.add
              tee_local 9
              i32.const 8
              i32.add
              i64.load
              i64.store
              get_local 1
              get_local 9
              i64.load
              i64.store offset=96
              get_local 5
              get_local 0
              get_local 4
              i32.add
              tee_local 0
              i32.const 184
              i32.add
              i64.load
              i64.store
              get_local 5
              i32.const 8
              i32.add
              get_local 0
              i32.const 192
              i32.add
              i64.load
              i64.store
              get_local 1
              i32.const 112
              i32.add
              i32.const 8
              i32.add
              get_local 3
              i64.load
              tee_local 10
              i64.store
              get_local 1
              i32.const 48
              i32.add
              i32.const 8
              i32.add
              get_local 10
              i64.store
              get_local 1
              i32.const 48
              i32.add
              i32.const 16
              i32.add
              get_local 5
              i64.load
              i64.store
              get_local 1
              i32.const 48
              i32.add
              i32.const 24
              i32.add
              get_local 1
              i32.const 112
              i32.add
              i32.const 24
              i32.add
              i64.load
              i64.store
              get_local 1
              get_local 1
              i64.load offset=96
              tee_local 10
              i64.store offset=112
              get_local 1
              get_local 10
              i64.store offset=48
              br 1 (;@4;)
            end
            get_local 1
            i32.load offset=8
            set_local 4
            get_local 1
            i32.const 96
            i32.add
            i32.const 8
            i32.add
            tee_local 11
            get_local 3
            i32.store
            get_local 1
            get_local 0
            i32.store offset=100
            get_local 1
            get_local 4
            i32.store offset=96
            get_local 1
            i32.const 112
            i32.add
            get_local 1
            i32.const 96
            i32.add
            call $<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Owned, K, V, alloc::collections::btree::node::marker::Leaf>>::deallocate_and_ascend::hcc7177937f069f56
            get_local 1
            i32.const 112
            i32.add
            i32.const 12
            i32.add
            tee_local 12
            i32.load
            set_local 3
            get_local 1
            i32.const 112
            i32.add
            i32.const 8
            i32.add
            set_local 13
            block  ;; label = @5
              loop  ;; label = @6
                get_local 13
                i32.load
                set_local 9
                get_local 1
                i32.load offset=112
                set_local 4
                get_local 3
                get_local 1
                i32.load offset=116
                tee_local 0
                i32.load16_u offset=6
                i32.lt_u
                br_if 1 (;@5;)
                get_local 11
                get_local 9
                i32.store
                get_local 1
                get_local 0
                i32.store offset=100
                get_local 1
                get_local 4
                i32.store offset=96
                get_local 1
                i32.const 112
                i32.add
                get_local 1
                i32.const 96
                i32.add
                call $<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Owned, K, V, alloc::collections::btree::node::marker::Internal>>::deallocate_and_ascend::h8e3744bb36face39
                get_local 12
                i32.load
                set_local 3
                br 0 (;@6;)
              end
            end
            get_local 1
            i32.const 80
            i32.add
            i32.const 8
            i32.add
            tee_local 12
            i32.const 1051504
            get_local 0
            i32.const 8
            i32.add
            get_local 0
            i32.const 1049348
            i32.eq
            select
            get_local 3
            i32.const 4
            i32.shl
            tee_local 14
            i32.add
            tee_local 15
            i32.const 8
            i32.add
            i64.load
            i64.store
            get_local 1
            get_local 15
            i64.load
            i64.store offset=80
            get_local 11
            get_local 0
            get_local 14
            i32.add
            tee_local 14
            i32.const 192
            i32.add
            i64.load
            i64.store
            get_local 1
            get_local 14
            i32.const 184
            i32.add
            i64.load
            i64.store offset=96
            get_local 13
            get_local 9
            i32.store
            get_local 1
            get_local 4
            i32.const -1
            i32.add
            i32.store offset=112
            get_local 1
            get_local 0
            get_local 3
            i32.const 2
            i32.shl
            i32.add
            i32.const 364
            i32.add
            i32.load
            i32.store offset=116
            get_local 1
            i32.const 8
            i32.add
            get_local 1
            i32.const 112
            i32.add
            call $alloc::collections::btree::map::first_leaf_edge::h93c7784cd4365aa5
            get_local 5
            get_local 1
            i64.load offset=96
            i64.store
            get_local 5
            i32.const 8
            i32.add
            get_local 11
            i64.load
            i64.store
            get_local 13
            get_local 12
            i64.load
            tee_local 10
            i64.store
            get_local 1
            i32.const 48
            i32.add
            i32.const 8
            i32.add
            get_local 10
            i64.store
            get_local 1
            i32.const 48
            i32.add
            i32.const 16
            i32.add
            get_local 5
            i64.load
            i64.store
            get_local 1
            i32.const 48
            i32.add
            i32.const 24
            i32.add
            get_local 1
            i32.const 112
            i32.add
            i32.const 24
            i32.add
            i64.load
            i64.store
            get_local 1
            get_local 1
            i64.load offset=80
            tee_local 10
            i64.store offset=112
            get_local 1
            get_local 10
            i64.store offset=48
          end
          get_local 1
          i32.load8_u offset=48
          i32.const 5
          i32.eq
          br_if 2 (;@1;)
          get_local 1
          i32.const 112
          i32.add
          i32.const 24
          i32.add
          get_local 1
          i32.const 48
          i32.add
          i32.const 24
          i32.add
          i64.load
          i64.store
          get_local 5
          get_local 1
          i32.const 48
          i32.add
          i32.const 16
          i32.add
          i64.load
          i64.store
          get_local 1
          i32.const 112
          i32.add
          i32.const 8
          i32.add
          get_local 1
          i32.const 48
          i32.add
          i32.const 8
          i32.add
          i64.load
          i64.store
          get_local 1
          get_local 1
          i64.load offset=48
          i64.store offset=112
          get_local 1
          i32.const 112
          i32.add
          call $core::iter::traits::iterator::Iterator::for_each::{{closure}}::he270d0d061695734
          get_local 1
          i32.load8_u offset=48
          i32.const 5
          i32.ne
          br_if 0 (;@3;)
          get_local 1
          i32.const 48
          i32.add
          call $core::ptr::real_drop_in_place::he1bfd250f99ba627
          br 0 (;@3;)
        end
      end
      get_local 1
      i32.const 5
      i32.store8 offset=48
    end
    get_local 1
    i32.const 48
    i32.add
    call $core::ptr::real_drop_in_place::he1bfd250f99ba627
    block  ;; label = @1
      get_local 1
      i32.load offset=12
      tee_local 0
      i32.const 1049348
      i32.eq
      br_if 0 (;@1;)
      get_local 1
      i32.load offset=8
      set_local 3
      get_local 1
      get_local 1
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store offset=120
      get_local 1
      get_local 0
      i32.store offset=116
      get_local 1
      get_local 3
      i32.store offset=112
      get_local 1
      i32.const 48
      i32.add
      get_local 1
      i32.const 112
      i32.add
      call $<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Owned, K, V, alloc::collections::btree::node::marker::Leaf>>::deallocate_and_ascend::hcc7177937f069f56
      get_local 1
      i32.load offset=52
      i32.eqz
      br_if 0 (;@1;)
      get_local 1
      i32.const 80
      i32.add
      i32.const 8
      i32.add
      tee_local 0
      get_local 1
      i32.const 48
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      get_local 1
      get_local 1
      i64.load offset=48
      i64.store offset=80
      loop  ;; label = @2
        get_local 1
        i32.const 96
        i32.add
        i32.const 8
        i32.add
        get_local 0
        i32.load
        i32.store
        get_local 1
        get_local 1
        i64.load offset=80
        i64.store offset=96
        get_local 1
        i32.const 112
        i32.add
        get_local 1
        i32.const 96
        i32.add
        call $<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Owned, K, V, alloc::collections::btree::node::marker::Internal>>::deallocate_and_ascend::h8e3744bb36face39
        get_local 1
        i32.load offset=116
        i32.eqz
        br_if 1 (;@1;)
        get_local 0
        get_local 1
        i32.const 112
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        get_local 1
        get_local 1
        i64.load offset=112
        i64.store offset=80
        br 0 (;@2;)
      end
    end
    get_local 1
    i32.const 144
    i32.add
    set_global 0)
  (func $<alloc::raw_vec::RawVec<T, A>>::dealloc_buffer::hdfa31298cc5471e8 (type 5) (param i32 i32)
    block  ;; label = @1
      get_local 1
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $__rust_dealloc (type 10) (param i32 i32 i32)
    get_local 0
    get_local 1
    get_local 2
    call $__rg_dealloc)
  (func $<[V] as alloc::slice::SliceConcatExt<T>>::concat::h7681939685306101 (type 5) (param i32 i32)
    (local i32 i32 i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    i32.const 0
    set_local 3
    i32.const 16
    set_local 4
    get_local 1
    set_local 5
    block  ;; label = @1
      loop  ;; label = @2
        get_local 4
        i32.eqz
        br_if 1 (;@1;)
        get_local 4
        i32.const -8
        i32.add
        set_local 4
        get_local 5
        i32.load offset=4
        get_local 3
        i32.add
        set_local 3
        get_local 5
        i32.const 8
        i32.add
        set_local 5
        br 0 (;@2;)
      end
    end
    get_local 2
    get_local 3
    call $<alloc::vec::Vec<T>>::with_capacity::h9e9190d5727353ee
    i32.const 16
    set_local 4
    block  ;; label = @1
      loop  ;; label = @2
        get_local 4
        i32.eqz
        br_if 1 (;@1;)
        get_local 2
        get_local 1
        i32.load
        get_local 1
        i32.load offset=4
        call $<alloc::vec::Vec<T>>::extend_from_slice::h1d5a85b5a69f482f
        get_local 4
        i32.const -8
        i32.add
        set_local 4
        get_local 1
        i32.const 8
        i32.add
        set_local 1
        br 0 (;@2;)
      end
    end
    get_local 0
    get_local 2
    i64.load
    i64.store align=4
    get_local 0
    i32.const 8
    i32.add
    get_local 2
    i32.const 8
    i32.add
    i32.load
    i32.store
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $<serde_cbor::ser::CollectionSerializer<'a, W>>::end_inner::hd61aa081d37f5d64 (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    i32.const 0
    set_local 3
    block  ;; label = @1
      get_local 1
      i32.eqz
      br_if 0 (;@1;)
      get_local 2
      i32.const 8
      i32.add
      get_local 0
      i32.load
      i32.load
      i32.const 1048586
      i32.const 1
      call $std::io::impls::<impl std::io::Write for &'a mut W>::write_all::h37d3c69c41e5b909
      get_local 2
      i32.const 8
      i32.add
      call $<core::result::Result<T, E>>::map_err::h1665158e6e9d98be
      set_local 3
    end
    get_local 2
    i32.const 16
    i32.add
    set_global 0
    get_local 3)
  (func $alloc::collections::btree::map::first_leaf_edge::he84ea2eaad1a0beb (type 5) (param i32 i32)
    (local i32 i32 i32)
    get_local 1
    i32.load
    i32.const -1
    i32.add
    set_local 2
    get_local 1
    i32.load offset=4
    set_local 3
    get_local 1
    i32.const 4
    i32.add
    set_local 4
    block  ;; label = @1
      loop  ;; label = @2
        get_local 2
        i32.const -1
        i32.eq
        br_if 1 (;@1;)
        get_local 4
        get_local 3
        i32.load offset=360
        tee_local 3
        i32.store
        get_local 1
        get_local 2
        i32.store
        get_local 2
        i32.const -1
        i32.add
        set_local 2
        br 0 (;@2;)
      end
    end
    get_local 0
    i32.const 0
    i32.store offset=12
    get_local 0
    get_local 3
    i32.store offset=4
    get_local 0
    i32.const 0
    i32.store
    get_local 0
    get_local 1
    i32.load offset=8
    i32.store offset=8)
  (func $half::convert::f32_to_f16::hdeb2ae0ad81fd3cc (type 11) (param f32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                get_local 0
                i32.reinterpret/f32
                tee_local 1
                i32.const 2147483647
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                get_local 1
                i32.const -2147483648
                i32.and
                set_local 2
                get_local 1
                i32.const 2139095040
                i32.and
                tee_local 3
                i32.eqz
                br_if 1 (;@5;)
                get_local 1
                i32.const 8388607
                i32.and
                set_local 4
                get_local 3
                i32.const 2139095040
                i32.ne
                br_if 2 (;@4;)
                get_local 2
                i32.const 16
                i32.shr_u
                set_local 1
                get_local 4
                i32.eqz
                br_if 3 (;@3;)
                get_local 1
                i32.const 32256
                i32.or
                set_local 2
                br 5 (;@1;)
              end
              get_local 1
              i32.const 16
              i32.shr_u
              return
            end
            get_local 2
            i32.const 16
            i32.shr_u
            return
          end
          get_local 2
          i32.const 16
          i32.shr_u
          set_local 2
          block  ;; label = @4
            get_local 3
            i32.const 23
            i32.shr_u
            tee_local 5
            i32.const -112
            i32.add
            tee_local 3
            i32.const 30
            i32.le_s
            br_if 0 (;@4;)
            get_local 2
            i32.const 31744
            i32.or
            return
          end
          get_local 3
          i32.const 0
          i32.le_s
          br_if 1 (;@2;)
          get_local 1
          i32.const 12
          i32.shr_u
          i32.const 1
          i32.and
          get_local 4
          i32.const 13
          i32.shr_u
          get_local 2
          i32.or
          get_local 3
          i32.const 10
          i32.shl
          i32.or
          i32.add
          return
        end
        get_local 1
        i32.const 31744
        i32.or
        return
      end
      i32.const 126
      get_local 5
      i32.sub
      tee_local 1
      i32.const 24
      i32.gt_s
      br_if 0 (;@1;)
      get_local 4
      i32.const 8388608
      i32.or
      tee_local 3
      get_local 1
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.const 29
      get_local 5
      i32.sub
      i32.const 31
      i32.and
      i32.shl
      get_local 3
      i32.and
      i32.const 0
      i32.ne
      i32.add
      get_local 2
      i32.or
      return
    end
    get_local 2)
  (func $half::<impl core::convert::From<half::f16> for f32>::from::h7b1a5524fb955309 (type 12) (param i32) (result f32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 0
          i32.const 32767
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          get_local 0
          i32.const 1023
          i32.and
          set_local 1
          get_local 0
          i32.const 32768
          i32.and
          set_local 2
          get_local 0
          i32.const 31744
          i32.and
          tee_local 0
          i32.const 31744
          i32.ne
          br_if 1 (;@2;)
          i32.const 2143289344
          set_local 0
          get_local 1
          br_if 2 (;@1;)
          get_local 2
          i32.const 16
          i32.shl
          i32.const 2139095040
          i32.or
          set_local 0
          br 2 (;@1;)
        end
        get_local 0
        i32.const 16
        i32.shl
        set_local 0
        br 1 (;@1;)
      end
      get_local 2
      i32.const 16
      i32.shl
      set_local 2
      block  ;; label = @2
        get_local 0
        i32.eqz
        br_if 0 (;@2;)
        get_local 1
        i32.const 13
        i32.shl
        get_local 2
        i32.or
        get_local 0
        i32.const 13
        i32.shl
        i32.const 260046848
        i32.and
        i32.const 939524096
        i32.add
        i32.or
        set_local 0
        br 1 (;@1;)
      end
      i32.const 1124073472
      get_local 1
      i32.clz
      tee_local 0
      i32.const 23
      i32.shl
      i32.sub
      get_local 2
      i32.or
      get_local 1
      get_local 0
      i32.const -8
      i32.add
      i32.const 31
      i32.and
      i32.shl
      i32.const 8388607
      i32.and
      i32.or
      set_local 0
    end
    get_local 0
    f32.reinterpret/i32)
  (func $wasm_rpc::external::get_memory::hf1dc07bb03491039 (type 13) (param i32) (result i64)
    (local i32 i32 i64)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    i32.const 8
    i32.add
    get_local 0
    call $<alloc::vec::Vec<u8> as wasm_rpc::pointer::Referenceable>::as_pointer::hde9436cae96a7607
    call $_get_memory
    call $<*const u8 as wasm_rpc::pointer::Dereferenceable>::as_raw_bytes::hae88d7369391ac9d
    get_local 1
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    get_local 1
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    i32.load
    tee_local 2
    i32.store
    get_local 1
    get_local 1
    i64.load offset=8
    i64.store offset=24
    i64.const 0
    set_local 3
    block  ;; label = @1
      get_local 2
      i32.const 8
      i32.ne
      br_if 0 (;@1;)
      get_local 1
      i64.const 0
      i64.store offset=40
      get_local 1
      i32.const 40
      i32.add
      i32.const 8
      get_local 1
      i32.load offset=24
      i32.const 8
      call $core::slice::<impl [T]>::copy_from_slice::h6683ac0449de7820
      get_local 1
      i64.load offset=40
      set_local 3
    end
    get_local 1
    i32.const 24
    i32.add
    call $core::ptr::real_drop_in_place::he33a927f4ac61062
    get_local 0
    call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
    get_local 1
    i32.const 48
    i32.add
    set_global 0
    get_local 3)
  (func $<*const u8 as wasm_rpc::pointer::Dereferenceable>::as_raw_bytes::hae88d7369391ac9d (type 5) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 0
    i32.store offset=12
    get_local 2
    i32.const 12
    i32.add
    i32.const 4
    get_local 1
    i32.const 4
    call $core::slice::<impl [T]>::copy_from_slice::h6683ac0449de7820
    get_local 0
    get_local 1
    i32.const 4
    i32.add
    get_local 2
    i32.load offset=12
    call $alloc::slice::<impl [T]>::to_vec::hc2fbd3e187958cbb
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $core::slice::<impl [T]>::copy_from_slice::h6683ac0449de7820 (type 3) (param i32 i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 96
    i32.sub
    tee_local 4
    set_global 0
    get_local 4
    get_local 1
    i32.store offset=8
    get_local 4
    get_local 3
    i32.store offset=12
    get_local 4
    get_local 4
    i32.const 8
    i32.add
    i32.store offset=16
    get_local 4
    get_local 4
    i32.const 12
    i32.add
    i32.store offset=20
    block  ;; label = @1
      get_local 1
      get_local 3
      i32.ne
      br_if 0 (;@1;)
      get_local 0
      get_local 2
      get_local 1
      call $memcpy
      drop
      get_local 4
      i32.const 96
      i32.add
      set_global 0
      return
    end
    get_local 4
    i32.const 72
    i32.add
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    get_local 4
    i32.const 48
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    get_local 4
    i32.const 60
    i32.add
    i32.const 4
    i32.store
    get_local 4
    i32.const 24
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    get_local 4
    i32.const 1051504
    i32.store offset=88
    get_local 4
    i64.const 1
    i64.store offset=76 align=4
    get_local 4
    i32.const 1057076
    i32.store offset=72
    get_local 4
    i32.const 4
    i32.store offset=52
    get_local 4
    i64.const 3
    i64.store offset=28 align=4
    get_local 4
    i32.const 1057084
    i32.store offset=24
    get_local 4
    get_local 4
    i32.const 72
    i32.add
    i32.store offset=64
    get_local 4
    get_local 4
    i32.const 20
    i32.add
    i32.store offset=56
    get_local 4
    get_local 4
    i32.const 16
    i32.add
    i32.store offset=48
    get_local 4
    get_local 4
    i32.const 48
    i32.add
    i32.store offset=40
    get_local 4
    i32.const 24
    i32.add
    i32.const 1057108
    call $core::panicking::panic_fmt::h4f468f2affe6a61e
    unreachable)
  (func $core::ptr::real_drop_in_place::he33a927f4ac61062 (type 0) (param i32)
    get_local 0
    i32.load
    get_local 0
    i32.const 4
    i32.add
    i32.load
    call $<alloc::raw_vec::RawVec<T, A>>::dealloc_buffer::hdfa31298cc5471e8)
  (func $wasm_rpc::external::set_memory::h7008fa092a5adb7f (type 14) (param i32 i64)
    (local i32 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 2
    set_global 0
    get_local 0
    call $<alloc::vec::Vec<u8> as wasm_rpc::pointer::Referenceable>::as_pointer::hde9436cae96a7607
    set_local 3
    get_local 2
    get_local 1
    i64.store offset=24
    get_local 2
    i32.const 8
    i32.add
    get_local 2
    i32.const 24
    i32.add
    i32.const 8
    call $alloc::slice::<impl [T]>::to_vec::hc2fbd3e187958cbb
    get_local 3
    get_local 2
    i32.const 8
    i32.add
    call $<alloc::vec::Vec<u8> as wasm_rpc::pointer::Referenceable>::as_pointer::hde9436cae96a7607
    call $_set_memory
    get_local 2
    i32.const 8
    i32.add
    call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
    get_local 0
    call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
    get_local 2
    i32.const 32
    i32.add
    set_global 0)
  (func $alloc::slice::<impl [T]>::to_vec::hc2fbd3e187958cbb (type 10) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 2
    call $<alloc::vec::Vec<T>>::with_capacity::h764b9e8cdc25089b
    get_local 3
    get_local 1
    get_local 2
    call $<alloc::vec::Vec<T>>::extend_from_slice::h1d5a85b5a69f482f
    get_local 0
    i32.const 8
    i32.add
    get_local 3
    i32.const 8
    i32.add
    i32.load
    i32.store
    get_local 0
    get_local 3
    i64.load
    i64.store align=4
    get_local 3
    i32.const 16
    i32.add
    set_global 0)
  (func $constructor (type 4) (param i32) (result i32)
    (local i32 i64)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 1
    set_global 0
    get_local 0
    call $<*const u8 as wasm_rpc::pointer::Dereferenceable>::to_i64::he3274004948a8084
    set_local 2
    get_local 1
    i32.const 48
    i32.add
    call $ellipticoin::sender::h0fe49437c4f2d7aa
    get_local 1
    i32.const 20
    i32.add
    get_local 1
    i32.load offset=56
    i32.store
    get_local 1
    i32.const 8
    i32.store offset=12
    get_local 1
    i32.const 1048587
    i32.store offset=8
    get_local 1
    get_local 1
    i32.load offset=48
    i32.store offset=16
    get_local 1
    i32.const 32
    i32.add
    get_local 1
    i32.const 8
    i32.add
    call $<[V] as alloc::slice::SliceConcatExt<T>>::concat::h7681939685306101
    get_local 1
    i32.const 32
    i32.add
    get_local 2
    call $wasm_rpc::external::set_memory::h7008fa092a5adb7f
    get_local 1
    i32.const 48
    i32.add
    call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
    get_local 1
    i32.const 0
    i32.store offset=8
    get_local 1
    i32.const 8
    i32.store8 offset=16
    get_local 1
    i32.const 8
    i32.add
    call $<core::result::Result<V, wasm_rpc::error::ErrorStruct<'static>> as wasm_rpc::response::Responsable>::to_response::hb0adf1fe3d59f3c4
    set_local 0
    get_local 1
    i32.const 64
    i32.add
    set_global 0
    get_local 0)
  (func $<*const u8 as wasm_rpc::pointer::Dereferenceable>::to_i64::he3274004948a8084 (type 13) (param i32) (result i64)
    (local i32 i64)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    i32.const 48
    i32.add
    get_local 0
    call $<*const u8 as wasm_rpc::pointer::Dereferenceable>::as_raw_bytes::hae88d7369391ac9d
    get_local 1
    i32.const 24
    i32.add
    get_local 1
    i32.load offset=48
    get_local 1
    i32.load offset=56
    call $serde_cbor::de::from_slice::hd2b118eb70708e78
    get_local 1
    i32.const 8
    i32.add
    get_local 1
    i32.const 24
    i32.add
    call $<core::result::Result<T, E>>::unwrap::h74f506793f91c4fb
    get_local 1
    i32.const 48
    i32.add
    call $core::ptr::real_drop_in_place::he33a927f4ac61062
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 1
          i32.load8_u offset=8
          tee_local 0
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          get_local 0
          br_if 2 (;@1;)
          get_local 1
          i32.const 16
          i32.add
          set_local 0
          br 1 (;@2;)
        end
        get_local 1
        i32.const 16
        i32.add
        set_local 0
      end
      get_local 0
      i64.load
      set_local 2
      get_local 1
      i32.const 8
      i32.add
      call $core::ptr::real_drop_in_place::h88bf5e1688a86f22
      get_local 1
      i32.const 64
      i32.add
      set_global 0
      get_local 2
      return
    end
    i32.const 1058596
    call $core::panicking::panic::h120f75380e215ba4
    unreachable)
  (func $ellipticoin::sender::h0fe49437c4f2d7aa (type 0) (param i32)
    get_local 0
    call $_sender
    call $<*const u8 as wasm_rpc::pointer::Dereferenceable>::as_raw_bytes::hae88d7369391ac9d)
  (func $balance_of (type 4) (param i32) (result i32)
    (local i32 i64)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    call $<*const u8 as wasm_rpc::pointer::Dereferenceable>::to_bytes::ha8037b76dd2a4621
    get_local 1
    i32.const 44
    i32.add
    get_local 1
    i32.load offset=8
    i32.store
    get_local 1
    i32.const 1048587
    i32.store offset=32
    get_local 1
    get_local 1
    i32.load
    i32.store offset=40
    get_local 1
    i32.const 8
    i32.store offset=36
    get_local 1
    i32.const 16
    i32.add
    get_local 1
    i32.const 32
    i32.add
    call $<[V] as alloc::slice::SliceConcatExt<T>>::concat::h7681939685306101
    get_local 1
    i32.const 16
    i32.add
    call $wasm_rpc::external::get_memory::hf1dc07bb03491039
    set_local 2
    get_local 1
    call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
    get_local 1
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    get_local 2
    i64.store
    get_local 1
    i32.const 0
    i32.store8 offset=32
    get_local 1
    i32.const 16
    i32.add
    get_local 1
    i32.const 32
    i32.add
    call $serde_cbor::ser::to_vec::h1c0b9498e35b63cc
    get_local 1
    get_local 1
    i32.const 16
    i32.add
    call $<core::result::Result<T, E>>::unwrap::h401479143956b260
    get_local 1
    i32.const 32
    i32.add
    call $core::ptr::real_drop_in_place::h01c958b1dd8c4041
    get_local 1
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    get_local 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    get_local 1
    get_local 1
    i64.load
    i64.store offset=16
    get_local 1
    i32.const 0
    i32.store
    get_local 1
    i32.const 32
    i32.add
    get_local 1
    call $alloc::slice::<impl [T]>::to_vec::h81b946d20507b8f4
    get_local 1
    i32.const 32
    i32.add
    get_local 1
    i32.const 16
    i32.add
    call $<alloc::vec::Vec<T>>::append::h6eb6364c3c8987a4
    get_local 1
    i32.const 32
    i32.add
    call $<alloc::vec::Vec<u8> as wasm_rpc::pointer::Referenceable>::as_pointer::hde9436cae96a7607
    set_local 0
    get_local 1
    i32.const 32
    i32.add
    call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
    get_local 1
    i32.const 16
    i32.add
    call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
    get_local 1
    i32.const 48
    i32.add
    set_global 0
    get_local 0)
  (func $<*const u8 as wasm_rpc::pointer::Dereferenceable>::to_bytes::ha8037b76dd2a4621 (type 5) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 48
    i32.add
    get_local 1
    call $<*const u8 as wasm_rpc::pointer::Dereferenceable>::as_raw_bytes::hae88d7369391ac9d
    get_local 2
    i32.const 24
    i32.add
    get_local 2
    i32.load offset=48
    get_local 2
    i32.load offset=56
    call $serde_cbor::de::from_slice::hd2b118eb70708e78
    get_local 2
    i32.const 8
    i32.add
    get_local 2
    i32.const 24
    i32.add
    call $<core::result::Result<T, E>>::unwrap::h74f506793f91c4fb
    get_local 2
    i32.const 48
    i32.add
    call $core::ptr::real_drop_in_place::he33a927f4ac61062
    block  ;; label = @1
      get_local 2
      i32.load8_u offset=8
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      get_local 0
      get_local 2
      i32.load offset=12
      get_local 2
      i32.const 20
      i32.add
      i32.load
      call $alloc::slice::<impl [T]>::to_vec::hc2fbd3e187958cbb
      get_local 2
      i32.const 8
      i32.add
      call $core::ptr::real_drop_in_place::h88bf5e1688a86f22
      get_local 2
      i32.const 64
      i32.add
      set_global 0
      return
    end
    i32.const 1058596
    call $core::panicking::panic::h120f75380e215ba4
    unreachable)
  (func $transfer (type 2) (param i32 i32) (result i32)
    (local i32 i64 i64 i32 i64)
    get_global 0
    i32.const 80
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 24
    i32.add
    get_local 0
    call $<*const u8 as wasm_rpc::pointer::Dereferenceable>::to_bytes::ha8037b76dd2a4621
    get_local 2
    get_local 1
    call $<*const u8 as wasm_rpc::pointer::Dereferenceable>::to_i64::he3274004948a8084
    tee_local 3
    i64.store offset=40
    get_local 2
    i32.const 64
    i32.add
    call $ellipticoin::sender::h0fe49437c4f2d7aa
    get_local 2
    i32.const 12
    i32.add
    tee_local 1
    get_local 2
    i32.load offset=72
    i32.store
    get_local 2
    i32.const 8
    i32.store offset=4
    get_local 2
    i32.const 1048587
    i32.store
    get_local 2
    get_local 2
    i32.load offset=64
    i32.store offset=8
    get_local 2
    i32.const 48
    i32.add
    get_local 2
    call $<[V] as alloc::slice::SliceConcatExt<T>>::concat::h7681939685306101
    get_local 2
    i32.const 48
    i32.add
    call $wasm_rpc::external::get_memory::hf1dc07bb03491039
    set_local 4
    get_local 2
    i32.const 64
    i32.add
    call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
    get_local 1
    get_local 2
    i32.load offset=32
    tee_local 0
    i32.store
    get_local 2
    i32.const 8
    i32.store offset=4
    get_local 2
    i32.const 1048587
    i32.store
    get_local 2
    get_local 2
    i32.load offset=24
    tee_local 5
    i32.store offset=8
    get_local 2
    i32.const 64
    i32.add
    get_local 2
    call $<[V] as alloc::slice::SliceConcatExt<T>>::concat::h7681939685306101
    get_local 2
    i32.const 64
    i32.add
    call $wasm_rpc::external::get_memory::hf1dc07bb03491039
    set_local 6
    block  ;; label = @1
      block  ;; label = @2
        get_local 4
        get_local 3
        i64.ge_u
        br_if 0 (;@2;)
        get_local 1
        i32.const 0
        i32.load offset=1057040
        i32.store
        get_local 2
        i32.const 0
        i64.load offset=1057032 align=4
        i64.store offset=4 align=4
        get_local 2
        i32.const 24
        i32.add
        call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
        i32.const 1
        set_local 1
        br 1 (;@1;)
      end
      get_local 2
      i32.const 64
      i32.add
      call $ellipticoin::sender::h0fe49437c4f2d7aa
      get_local 1
      get_local 2
      i32.load offset=72
      i32.store
      get_local 2
      i32.const 8
      i32.store offset=4
      get_local 2
      i32.const 1048587
      i32.store
      get_local 2
      get_local 2
      i32.load offset=64
      i32.store offset=8
      get_local 2
      i32.const 48
      i32.add
      get_local 2
      call $<[V] as alloc::slice::SliceConcatExt<T>>::concat::h7681939685306101
      get_local 2
      i32.const 48
      i32.add
      get_local 4
      get_local 3
      i64.sub
      call $wasm_rpc::external::set_memory::h7008fa092a5adb7f
      get_local 2
      i32.const 64
      i32.add
      call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
      get_local 1
      get_local 0
      i32.store
      get_local 2
      get_local 5
      i32.store offset=8
      get_local 2
      i32.const 8
      i32.store offset=4
      get_local 2
      i32.const 1048587
      i32.store
      get_local 2
      i32.const 64
      i32.add
      get_local 2
      call $<[V] as alloc::slice::SliceConcatExt<T>>::concat::h7681939685306101
      get_local 2
      i32.const 64
      i32.add
      get_local 6
      get_local 3
      i64.add
      call $wasm_rpc::external::set_memory::h7008fa092a5adb7f
      get_local 2
      i32.const 8
      i32.add
      i32.const 8
      i32.store8
      get_local 2
      i32.const 24
      i32.add
      call $core::ptr::real_drop_in_place::h55633d7fcf7a8754
      i32.const 0
      set_local 1
    end
    get_local 2
    get_local 1
    i32.store
    get_local 2
    call $<core::result::Result<V, wasm_rpc::error::ErrorStruct<'static>> as wasm_rpc::response::Responsable>::to_response::hb0adf1fe3d59f3c4
    set_local 1
    get_local 2
    i32.const 80
    i32.add
    set_global 0
    get_local 1)
  (func $__rg_alloc (type 2) (param i32 i32) (result i32)
    get_local 0
    get_local 1
    call $<wee_alloc::WeeAlloc<'static> as core::alloc::GlobalAlloc>::alloc::hb19f34087828f36a)
  (func $<wee_alloc::WeeAlloc<'static> as core::alloc::GlobalAlloc>::alloc::hb19f34087828f36a (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 1
    i32.const 1
    get_local 1
    select
    set_local 1
    block  ;; label = @1
      get_local 0
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 3
      i32.add
      i32.const 2
      i32.shr_u
      set_local 0
      block  ;; label = @2
        get_local 1
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        get_local 0
        i32.const -1
        i32.add
        tee_local 3
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        get_local 3
        i32.const 2
        i32.shl
        i32.const 1055988
        i32.add
        tee_local 3
        i32.eqz
        br_if 0 (;@2;)
        get_local 2
        i32.const 1055984
        i32.store offset=4
        get_local 2
        get_local 3
        i32.load
        i32.store offset=12
        get_local 0
        get_local 1
        get_local 2
        i32.const 12
        i32.add
        get_local 2
        i32.const 4
        i32.add
        i32.const 1057484
        call $wee_alloc::alloc_with_refill::h871ca8d8848ffc55
        set_local 1
        get_local 3
        get_local 2
        i32.load offset=12
        i32.store
        br 1 (;@1;)
      end
      get_local 2
      i32.const 0
      i32.load offset=1055984
      i32.store offset=8
      get_local 0
      get_local 1
      get_local 2
      i32.const 8
      i32.add
      i32.const 1051504
      i32.const 1057460
      call $wee_alloc::alloc_with_refill::h871ca8d8848ffc55
      set_local 1
      i32.const 0
      get_local 2
      i32.load offset=8
      i32.store offset=1055984
    end
    get_local 2
    i32.const 16
    i32.add
    set_global 0
    get_local 1)
  (func $__rg_dealloc (type 10) (param i32 i32 i32)
    get_local 0
    get_local 1
    get_local 2
    call $<wee_alloc::WeeAlloc<'static> as core::alloc::GlobalAlloc>::dealloc::hb1c00fa095518b22)
  (func $<wee_alloc::WeeAlloc<'static> as core::alloc::GlobalAlloc>::dealloc::hb1c00fa095518b22 (type 10) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 3
    set_global 0
    block  ;; label = @1
      get_local 0
      i32.eqz
      br_if 0 (;@1;)
      get_local 3
      get_local 0
      i32.store offset=4
      get_local 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        get_local 2
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        get_local 1
        i32.const 3
        i32.add
        i32.const 2
        i32.shr_u
        i32.const -1
        i32.add
        tee_local 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        get_local 0
        i32.const 2
        i32.shl
        i32.const 1055988
        i32.add
        tee_local 0
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        i32.const 1055984
        i32.store offset=8
        get_local 3
        get_local 0
        i32.load
        i32.store offset=12
        get_local 3
        i32.const 4
        i32.add
        get_local 3
        i32.const 12
        i32.add
        get_local 3
        i32.const 8
        i32.add
        i32.const 1057484
        call $wee_alloc::WeeAlloc::dealloc_impl::{{closure}}::h17b94554aac89400
        get_local 0
        get_local 3
        i32.load offset=12
        i32.store
        br 1 (;@1;)
      end
      get_local 3
      i32.const 0
      i32.load offset=1055984
      i32.store offset=12
      get_local 3
      i32.const 4
      i32.add
      get_local 3
      i32.const 12
      i32.add
      i32.const 1051504
      i32.const 1057460
      call $wee_alloc::WeeAlloc::dealloc_impl::{{closure}}::h17b94554aac89400
      i32.const 0
      get_local 3
      i32.load offset=12
      i32.store offset=1055984
    end
    get_local 3
    i32.const 16
    i32.add
    set_global 0)
  (func $__rg_realloc (type 15) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      get_local 3
      get_local 2
      call $<wee_alloc::WeeAlloc<'static> as core::alloc::GlobalAlloc>::alloc::hb19f34087828f36a
      tee_local 4
      i32.eqz
      br_if 0 (;@1;)
      get_local 4
      get_local 0
      get_local 3
      get_local 1
      get_local 1
      get_local 3
      i32.gt_u
      select
      call $memcpy
      drop
      get_local 0
      get_local 1
      get_local 2
      call $<wee_alloc::WeeAlloc<'static> as core::alloc::GlobalAlloc>::dealloc::hb1c00fa095518b22
    end
    get_local 4)
  (func $<alloc::vec::Vec<T>>::with_capacity::h764b9e8cdc25089b (type 5) (param i32 i32)
    (local i32 i64)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 8
    i32.add
    get_local 1
    call $<alloc::raw_vec::RawVec<T, A>>::allocate_in::he70358c668afe104
    get_local 2
    i64.load offset=8
    set_local 3
    get_local 0
    i32.const 0
    i32.store offset=8
    get_local 0
    get_local 3
    i64.store align=4
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_value::h1a918e0cae4b9718 (type 5) (param i32 i32)
    (local i32 i64 i32 i32 i32 i64 f64)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 16
    i32.add
    get_local 1
    call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
    get_local 2
    get_local 2
    i64.load offset=16
    tee_local 3
    i64.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        get_local 3
        i32.wrap/i64
        i32.const 255
        i32.and
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        get_local 0
        i32.const 1
        i32.store
        get_local 0
        get_local 3
        i64.const 32
        i64.shr_u
        i64.store32 offset=4
        br 1 (;@1;)
      end
      get_local 2
      i32.const 8
      i32.add
      call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
      block  ;; label = @2
        get_local 3
        i64.const 8
        i64.shr_u
        tee_local 3
        i32.wrap/i64
        tee_local 4
        i32.const 255
        i32.and
        i32.const 24
        i32.ge_u
        br_if 0 (;@2;)
        get_local 0
        i32.const 0
        i32.store
        get_local 0
        i32.const 16
        i32.add
        get_local 3
        i64.const 255
        i64.and
        i64.store
        get_local 0
        i32.const 8
        i32.add
        i32.const 0
        i32.store8
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      block  ;; label = @50
                                                                                                        block  ;; label = @51
                                                                                                          block  ;; label = @52
                                                                                                            block  ;; label = @53
                                                                                                              block  ;; label = @54
                                                                                                                block  ;; label = @55
                                                                                                                  block  ;; label = @56
                                                                                                                    block  ;; label = @57
                                                                                                                      block  ;; label = @58
                                                                                                                        block  ;; label = @59
                                                                                                                          block  ;; label = @60
                                                                                                                            block  ;; label = @61
                                                                                                                              block  ;; label = @62
                                                                                                                                block  ;; label = @63
                                                                                                                                  block  ;; label = @64
                                                                                                                                    block  ;; label = @65
                                                                                                                                      block  ;; label = @66
                                                                                                                                        block  ;; label = @67
                                                                                                                                          block  ;; label = @68
                                                                                                                                            block  ;; label = @69
                                                                                                                                              block  ;; label = @70
                                                                                                                                                block  ;; label = @71
                                                                                                                                                  block  ;; label = @72
                                                                                                                                                    block  ;; label = @73
                                                                                                                                                      block  ;; label = @74
                                                                                                                                                        block  ;; label = @75
                                                                                                                                                          block  ;; label = @76
                                                                                                                                                            block  ;; label = @77
                                                                                                                                                              block  ;; label = @78
                                                                                                                                                                block  ;; label = @79
                                                                                                                                                                  block  ;; label = @80
                                                                                                                                                                    block  ;; label = @81
                                                                                                                                                                      block  ;; label = @82
                                                                                                                                                                        block  ;; label = @83
                                                                                                                                                                          block  ;; label = @84
                                                                                                                                                                            block  ;; label = @85
                                                                                                                                                                              block  ;; label = @86
                                                                                                                                                                                get_local 4
                                                                                                                                                                                i32.const 255
                                                                                                                                                                                i32.and
                                                                                                                                                                                tee_local 5
                                                                                                                                                                                i32.const -244
                                                                                                                                                                                i32.add
                                                                                                                                                                                tee_local 6
                                                                                                                                                                                i32.const 11
                                                                                                                                                                                i32.le_u
                                                                                                                                                                                br_if 0 (;@86;)
                                                                                                                                                                                get_local 5
                                                                                                                                                                                i32.const -88
                                                                                                                                                                                i32.add
                                                                                                                                                                                tee_local 6
                                                                                                                                                                                i32.const 7
                                                                                                                                                                                i32.le_u
                                                                                                                                                                                br_if 1 (;@85;)
                                                                                                                                                                                get_local 5
                                                                                                                                                                                i32.const -120
                                                                                                                                                                                i32.add
                                                                                                                                                                                tee_local 6
                                                                                                                                                                                i32.const 7
                                                                                                                                                                                i32.le_u
                                                                                                                                                                                br_if 2 (;@84;)
                                                                                                                                                                                get_local 5
                                                                                                                                                                                i32.const -152
                                                                                                                                                                                i32.add
                                                                                                                                                                                tee_local 6
                                                                                                                                                                                i32.const 7
                                                                                                                                                                                i32.le_u
                                                                                                                                                                                br_if 3 (;@83;)
                                                                                                                                                                                get_local 5
                                                                                                                                                                                i32.const -184
                                                                                                                                                                                i32.add
                                                                                                                                                                                tee_local 6
                                                                                                                                                                                i32.const 7
                                                                                                                                                                                i32.le_u
                                                                                                                                                                                br_if 4 (;@82;)
                                                                                                                                                                                get_local 5
                                                                                                                                                                                i32.const -24
                                                                                                                                                                                i32.add
                                                                                                                                                                                tee_local 6
                                                                                                                                                                                i32.const 3
                                                                                                                                                                                i32.le_u
                                                                                                                                                                                br_if 6 (;@80;)
                                                                                                                                                                                get_local 5
                                                                                                                                                                                i32.const -56
                                                                                                                                                                                i32.add
                                                                                                                                                                                tee_local 6
                                                                                                                                                                                i32.const 3
                                                                                                                                                                                i32.le_u
                                                                                                                                                                                br_if 5 (;@81;)
                                                                                                                                                                                get_local 5
                                                                                                                                                                                i32.const -216
                                                                                                                                                                                i32.add
                                                                                                                                                                                tee_local 5
                                                                                                                                                                                i32.const 3
                                                                                                                                                                                i32.gt_u
                                                                                                                                                                                br_if 7 (;@79;)
                                                                                                                                                                                block  ;; label = @87
                                                                                                                                                                                  get_local 5
                                                                                                                                                                                  br_table 0 (;@87;) 39 (;@48;) 34 (;@53;) 37 (;@50;) 0 (;@87;)
                                                                                                                                                                                end
                                                                                                                                                                                get_local 2
                                                                                                                                                                                i32.const 16
                                                                                                                                                                                i32.add
                                                                                                                                                                                get_local 1
                                                                                                                                                                                call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                                get_local 2
                                                                                                                                                                                get_local 2
                                                                                                                                                                                i64.load offset=16
                                                                                                                                                                                tee_local 3
                                                                                                                                                                                i64.store offset=8
                                                                                                                                                                                get_local 3
                                                                                                                                                                                i32.wrap/i64
                                                                                                                                                                                i32.const 255
                                                                                                                                                                                i32.and
                                                                                                                                                                                i32.const 1
                                                                                                                                                                                i32.ne
                                                                                                                                                                                br_if 70 (;@16;)
                                                                                                                                                                                get_local 0
                                                                                                                                                                                i32.const 1
                                                                                                                                                                                i32.store
                                                                                                                                                                                get_local 0
                                                                                                                                                                                get_local 3
                                                                                                                                                                                i64.const 32
                                                                                                                                                                                i64.shr_u
                                                                                                                                                                                i64.store32 offset=4
                                                                                                                                                                                br 85 (;@1;)
                                                                                                                                                                              end
                                                                                                                                                                              block  ;; label = @86
                                                                                                                                                                                get_local 6
                                                                                                                                                                                br_table 0 (;@86;) 18 (;@68;) 20 (;@66;) 19 (;@67;) 17 (;@69;) 21 (;@65;) 16 (;@70;) 22 (;@64;) 7 (;@79;) 7 (;@79;) 7 (;@79;) 23 (;@63;) 0 (;@86;)
                                                                                                                                                                              end
                                                                                                                                                                              get_local 0
                                                                                                                                                                              i32.const 0
                                                                                                                                                                              i32.store
                                                                                                                                                                              get_local 0
                                                                                                                                                                              i32.const 8
                                                                                                                                                                              i32.add
                                                                                                                                                                              i32.const 3
                                                                                                                                                                              i32.store16
                                                                                                                                                                              br 84 (;@1;)
                                                                                                                                                                            end
                                                                                                                                                                            block  ;; label = @85
                                                                                                                                                                              get_local 6
                                                                                                                                                                              br_table 0 (;@85;) 7 (;@78;) 8 (;@77;) 10 (;@75;) 6 (;@79;) 6 (;@79;) 6 (;@79;) 9 (;@76;) 0 (;@85;)
                                                                                                                                                                            end
                                                                                                                                                                            get_local 2
                                                                                                                                                                            i32.const 16
                                                                                                                                                                            i32.add
                                                                                                                                                                            get_local 1
                                                                                                                                                                            call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                            get_local 2
                                                                                                                                                                            get_local 2
                                                                                                                                                                            i64.load offset=16
                                                                                                                                                                            tee_local 3
                                                                                                                                                                            i64.store offset=8
                                                                                                                                                                            get_local 3
                                                                                                                                                                            i32.wrap/i64
                                                                                                                                                                            tee_local 5
                                                                                                                                                                            i32.const 255
                                                                                                                                                                            i32.and
                                                                                                                                                                            i32.const 1
                                                                                                                                                                            i32.ne
                                                                                                                                                                            br_if 43 (;@41;)
                                                                                                                                                                            get_local 0
                                                                                                                                                                            i32.const 1
                                                                                                                                                                            i32.store
                                                                                                                                                                            get_local 0
                                                                                                                                                                            get_local 3
                                                                                                                                                                            i64.const 32
                                                                                                                                                                            i64.shr_u
                                                                                                                                                                            i64.store32 offset=4
                                                                                                                                                                            br 83 (;@1;)
                                                                                                                                                                          end
                                                                                                                                                                          block  ;; label = @84
                                                                                                                                                                            get_local 6
                                                                                                                                                                            br_table 0 (;@84;) 10 (;@74;) 11 (;@73;) 13 (;@71;) 5 (;@79;) 5 (;@79;) 5 (;@79;) 12 (;@72;) 0 (;@84;)
                                                                                                                                                                          end
                                                                                                                                                                          get_local 2
                                                                                                                                                                          i32.const 16
                                                                                                                                                                          i32.add
                                                                                                                                                                          get_local 1
                                                                                                                                                                          call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                          get_local 2
                                                                                                                                                                          get_local 2
                                                                                                                                                                          i64.load offset=16
                                                                                                                                                                          tee_local 3
                                                                                                                                                                          i64.store offset=8
                                                                                                                                                                          get_local 3
                                                                                                                                                                          i32.wrap/i64
                                                                                                                                                                          tee_local 5
                                                                                                                                                                          i32.const 255
                                                                                                                                                                          i32.and
                                                                                                                                                                          i32.const 1
                                                                                                                                                                          i32.ne
                                                                                                                                                                          br_if 47 (;@36;)
                                                                                                                                                                          get_local 0
                                                                                                                                                                          i32.const 1
                                                                                                                                                                          i32.store
                                                                                                                                                                          get_local 0
                                                                                                                                                                          get_local 3
                                                                                                                                                                          i64.const 32
                                                                                                                                                                          i64.shr_u
                                                                                                                                                                          i64.store32 offset=4
                                                                                                                                                                          br 82 (;@1;)
                                                                                                                                                                        end
                                                                                                                                                                        block  ;; label = @83
                                                                                                                                                                          get_local 6
                                                                                                                                                                          br_table 0 (;@83;) 21 (;@62;) 22 (;@61;) 24 (;@59;) 4 (;@79;) 4 (;@79;) 4 (;@79;) 23 (;@60;) 0 (;@83;)
                                                                                                                                                                        end
                                                                                                                                                                        get_local 2
                                                                                                                                                                        i32.const 16
                                                                                                                                                                        i32.add
                                                                                                                                                                        get_local 1
                                                                                                                                                                        call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                        get_local 2
                                                                                                                                                                        get_local 2
                                                                                                                                                                        i64.load offset=16
                                                                                                                                                                        tee_local 3
                                                                                                                                                                        i64.store offset=8
                                                                                                                                                                        get_local 3
                                                                                                                                                                        i32.wrap/i64
                                                                                                                                                                        tee_local 5
                                                                                                                                                                        i32.const 255
                                                                                                                                                                        i32.and
                                                                                                                                                                        i32.const 1
                                                                                                                                                                        i32.ne
                                                                                                                                                                        br_if 53 (;@29;)
                                                                                                                                                                        get_local 0
                                                                                                                                                                        i32.const 1
                                                                                                                                                                        i32.store
                                                                                                                                                                        get_local 0
                                                                                                                                                                        get_local 3
                                                                                                                                                                        i64.const 32
                                                                                                                                                                        i64.shr_u
                                                                                                                                                                        i64.store32 offset=4
                                                                                                                                                                        br 81 (;@1;)
                                                                                                                                                                      end
                                                                                                                                                                      block  ;; label = @82
                                                                                                                                                                        get_local 6
                                                                                                                                                                        br_table 0 (;@82;) 24 (;@58;) 25 (;@57;) 27 (;@55;) 3 (;@79;) 3 (;@79;) 3 (;@79;) 26 (;@56;) 0 (;@82;)
                                                                                                                                                                      end
                                                                                                                                                                      get_local 2
                                                                                                                                                                      i32.const 16
                                                                                                                                                                      i32.add
                                                                                                                                                                      get_local 1
                                                                                                                                                                      call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                      get_local 2
                                                                                                                                                                      get_local 2
                                                                                                                                                                      i64.load offset=16
                                                                                                                                                                      tee_local 3
                                                                                                                                                                      i64.store offset=8
                                                                                                                                                                      get_local 3
                                                                                                                                                                      i32.wrap/i64
                                                                                                                                                                      tee_local 5
                                                                                                                                                                      i32.const 255
                                                                                                                                                                      i32.and
                                                                                                                                                                      i32.const 1
                                                                                                                                                                      i32.ne
                                                                                                                                                                      br_if 56 (;@25;)
                                                                                                                                                                      get_local 0
                                                                                                                                                                      i32.const 1
                                                                                                                                                                      i32.store
                                                                                                                                                                      get_local 0
                                                                                                                                                                      get_local 3
                                                                                                                                                                      i64.const 32
                                                                                                                                                                      i64.shr_u
                                                                                                                                                                      i64.store32 offset=4
                                                                                                                                                                      br 80 (;@1;)
                                                                                                                                                                    end
                                                                                                                                                                    block  ;; label = @81
                                                                                                                                                                      get_local 6
                                                                                                                                                                      br_table 0 (;@81;) 30 (;@51;) 27 (;@54;) 29 (;@52;) 0 (;@81;)
                                                                                                                                                                    end
                                                                                                                                                                    get_local 2
                                                                                                                                                                    i32.const 16
                                                                                                                                                                    i32.add
                                                                                                                                                                    get_local 1
                                                                                                                                                                    call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                    get_local 2
                                                                                                                                                                    get_local 2
                                                                                                                                                                    i64.load offset=16
                                                                                                                                                                    tee_local 3
                                                                                                                                                                    i64.store offset=8
                                                                                                                                                                    get_local 3
                                                                                                                                                                    i32.wrap/i64
                                                                                                                                                                    i32.const 255
                                                                                                                                                                    i32.and
                                                                                                                                                                    i32.const 1
                                                                                                                                                                    i32.ne
                                                                                                                                                                    br_if 60 (;@20;)
                                                                                                                                                                    get_local 0
                                                                                                                                                                    i32.const 1
                                                                                                                                                                    i32.store
                                                                                                                                                                    get_local 0
                                                                                                                                                                    get_local 3
                                                                                                                                                                    i64.const 32
                                                                                                                                                                    i64.shr_u
                                                                                                                                                                    i64.store32 offset=4
                                                                                                                                                                    br 79 (;@1;)
                                                                                                                                                                  end
                                                                                                                                                                  block  ;; label = @80
                                                                                                                                                                    get_local 6
                                                                                                                                                                    br_table 0 (;@80;) 34 (;@46;) 31 (;@49;) 33 (;@47;) 0 (;@80;)
                                                                                                                                                                  end
                                                                                                                                                                  get_local 2
                                                                                                                                                                  i32.const 16
                                                                                                                                                                  i32.add
                                                                                                                                                                  get_local 1
                                                                                                                                                                  call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                  get_local 2
                                                                                                                                                                  get_local 2
                                                                                                                                                                  i64.load offset=16
                                                                                                                                                                  tee_local 3
                                                                                                                                                                  i64.store offset=8
                                                                                                                                                                  get_local 3
                                                                                                                                                                  i32.wrap/i64
                                                                                                                                                                  i32.const 255
                                                                                                                                                                  i32.and
                                                                                                                                                                  i32.const 1
                                                                                                                                                                  i32.ne
                                                                                                                                                                  br_if 66 (;@13;)
                                                                                                                                                                  get_local 0
                                                                                                                                                                  i32.const 1
                                                                                                                                                                  i32.store
                                                                                                                                                                  get_local 0
                                                                                                                                                                  get_local 3
                                                                                                                                                                  i64.const 32
                                                                                                                                                                  i64.shr_u
                                                                                                                                                                  i64.store32 offset=4
                                                                                                                                                                  br 78 (;@1;)
                                                                                                                                                                end
                                                                                                                                                                get_local 4
                                                                                                                                                                i32.const 252
                                                                                                                                                                i32.and
                                                                                                                                                                tee_local 5
                                                                                                                                                                i32.const 28
                                                                                                                                                                i32.ne
                                                                                                                                                                br_if 33 (;@45;)
                                                                                                                                                                get_local 2
                                                                                                                                                                i32.const 8
                                                                                                                                                                i32.store offset=16
                                                                                                                                                                get_local 1
                                                                                                                                                                get_local 2
                                                                                                                                                                i32.const 16
                                                                                                                                                                i32.add
                                                                                                                                                                call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                                                                                                                                set_local 1
                                                                                                                                                                get_local 0
                                                                                                                                                                i32.const 1
                                                                                                                                                                i32.store
                                                                                                                                                                get_local 0
                                                                                                                                                                get_local 1
                                                                                                                                                                i32.store offset=4
                                                                                                                                                                br 77 (;@1;)
                                                                                                                                                              end
                                                                                                                                                              get_local 2
                                                                                                                                                              i32.const 16
                                                                                                                                                              i32.add
                                                                                                                                                              get_local 1
                                                                                                                                                              call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                                                                              get_local 2
                                                                                                                                                              get_local 2
                                                                                                                                                              i64.load offset=16
                                                                                                                                                              tee_local 3
                                                                                                                                                              i64.store offset=8
                                                                                                                                                              get_local 3
                                                                                                                                                              i32.wrap/i64
                                                                                                                                                              tee_local 5
                                                                                                                                                              i32.const 65535
                                                                                                                                                              i32.and
                                                                                                                                                              i32.const 1
                                                                                                                                                              i32.ne
                                                                                                                                                              br_if 33 (;@44;)
                                                                                                                                                              get_local 0
                                                                                                                                                              i32.const 1
                                                                                                                                                              i32.store
                                                                                                                                                              get_local 0
                                                                                                                                                              get_local 3
                                                                                                                                                              i64.const 32
                                                                                                                                                              i64.shr_u
                                                                                                                                                              i64.store32 offset=4
                                                                                                                                                              br 76 (;@1;)
                                                                                                                                                            end
                                                                                                                                                            get_local 2
                                                                                                                                                            i32.const 16
                                                                                                                                                            i32.add
                                                                                                                                                            get_local 1
                                                                                                                                                            call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                                                                            get_local 2
                                                                                                                                                            get_local 2
                                                                                                                                                            i64.load offset=16
                                                                                                                                                            tee_local 3
                                                                                                                                                            i64.store offset=8
                                                                                                                                                            get_local 3
                                                                                                                                                            i64.const 32
                                                                                                                                                            i64.shr_u
                                                                                                                                                            i32.wrap/i64
                                                                                                                                                            set_local 5
                                                                                                                                                            get_local 3
                                                                                                                                                            i32.wrap/i64
                                                                                                                                                            i32.const 1
                                                                                                                                                            i32.ne
                                                                                                                                                            br_if 33 (;@43;)
                                                                                                                                                            get_local 0
                                                                                                                                                            i32.const 1
                                                                                                                                                            i32.store
                                                                                                                                                            get_local 0
                                                                                                                                                            get_local 5
                                                                                                                                                            i32.store offset=4
                                                                                                                                                            br 75 (;@1;)
                                                                                                                                                          end
                                                                                                                                                          get_local 2
                                                                                                                                                          i32.const 16
                                                                                                                                                          i32.add
                                                                                                                                                          get_local 1
                                                                                                                                                          call $<serde_cbor::de::Deserializer<R>>::parse_indefinite_bytes::hb3989b60cb33ff75
                                                                                                                                                          get_local 2
                                                                                                                                                          i32.load offset=16
                                                                                                                                                          i32.const 1
                                                                                                                                                          i32.ne
                                                                                                                                                          br_if 33 (;@42;)
                                                                                                                                                          get_local 0
                                                                                                                                                          get_local 2
                                                                                                                                                          i32.load offset=20
                                                                                                                                                          i32.store offset=4
                                                                                                                                                          get_local 0
                                                                                                                                                          i32.const 1
                                                                                                                                                          i32.store
                                                                                                                                                          br 74 (;@1;)
                                                                                                                                                        end
                                                                                                                                                        get_local 2
                                                                                                                                                        i32.const 16
                                                                                                                                                        i32.add
                                                                                                                                                        get_local 1
                                                                                                                                                        call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                                                                        get_local 2
                                                                                                                                                        i32.load offset=16
                                                                                                                                                        i32.const 1
                                                                                                                                                        i32.ne
                                                                                                                                                        br_if 34 (;@40;)
                                                                                                                                                        get_local 0
                                                                                                                                                        get_local 2
                                                                                                                                                        i32.load offset=20
                                                                                                                                                        i32.store offset=4
                                                                                                                                                        get_local 0
                                                                                                                                                        i32.const 1
                                                                                                                                                        i32.store
                                                                                                                                                        br 73 (;@1;)
                                                                                                                                                      end
                                                                                                                                                      get_local 2
                                                                                                                                                      i32.const 16
                                                                                                                                                      i32.add
                                                                                                                                                      get_local 1
                                                                                                                                                      call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                                                                      get_local 2
                                                                                                                                                      get_local 2
                                                                                                                                                      i64.load offset=16
                                                                                                                                                      tee_local 3
                                                                                                                                                      i64.store offset=8
                                                                                                                                                      get_local 3
                                                                                                                                                      i32.wrap/i64
                                                                                                                                                      tee_local 5
                                                                                                                                                      i32.const 65535
                                                                                                                                                      i32.and
                                                                                                                                                      i32.const 1
                                                                                                                                                      i32.ne
                                                                                                                                                      br_if 34 (;@39;)
                                                                                                                                                      get_local 0
                                                                                                                                                      i32.const 1
                                                                                                                                                      i32.store
                                                                                                                                                      get_local 0
                                                                                                                                                      get_local 3
                                                                                                                                                      i64.const 32
                                                                                                                                                      i64.shr_u
                                                                                                                                                      i64.store32 offset=4
                                                                                                                                                      br 72 (;@1;)
                                                                                                                                                    end
                                                                                                                                                    get_local 2
                                                                                                                                                    i32.const 16
                                                                                                                                                    i32.add
                                                                                                                                                    get_local 1
                                                                                                                                                    call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                                                                    get_local 2
                                                                                                                                                    get_local 2
                                                                                                                                                    i64.load offset=16
                                                                                                                                                    tee_local 3
                                                                                                                                                    i64.store offset=8
                                                                                                                                                    get_local 3
                                                                                                                                                    i64.const 32
                                                                                                                                                    i64.shr_u
                                                                                                                                                    i32.wrap/i64
                                                                                                                                                    set_local 5
                                                                                                                                                    get_local 3
                                                                                                                                                    i32.wrap/i64
                                                                                                                                                    i32.const 1
                                                                                                                                                    i32.ne
                                                                                                                                                    br_if 34 (;@38;)
                                                                                                                                                    get_local 0
                                                                                                                                                    i32.const 1
                                                                                                                                                    i32.store
                                                                                                                                                    get_local 0
                                                                                                                                                    get_local 5
                                                                                                                                                    i32.store offset=4
                                                                                                                                                    br 71 (;@1;)
                                                                                                                                                  end
                                                                                                                                                  get_local 2
                                                                                                                                                  i32.const 16
                                                                                                                                                  i32.add
                                                                                                                                                  get_local 1
                                                                                                                                                  call $<serde_cbor::de::Deserializer<R>>::parse_indefinite_str::h1f671b35f261b74d
                                                                                                                                                  get_local 2
                                                                                                                                                  i32.load offset=16
                                                                                                                                                  i32.const 1
                                                                                                                                                  i32.ne
                                                                                                                                                  br_if 34 (;@37;)
                                                                                                                                                  get_local 0
                                                                                                                                                  get_local 2
                                                                                                                                                  i32.load offset=20
                                                                                                                                                  i32.store offset=4
                                                                                                                                                  get_local 0
                                                                                                                                                  i32.const 1
                                                                                                                                                  i32.store
                                                                                                                                                  br 70 (;@1;)
                                                                                                                                                end
                                                                                                                                                get_local 2
                                                                                                                                                i32.const 16
                                                                                                                                                i32.add
                                                                                                                                                get_local 1
                                                                                                                                                call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                                                                get_local 2
                                                                                                                                                i32.load offset=16
                                                                                                                                                i32.const 1
                                                                                                                                                i32.ne
                                                                                                                                                br_if 35 (;@35;)
                                                                                                                                                get_local 0
                                                                                                                                                get_local 2
                                                                                                                                                i32.load offset=20
                                                                                                                                                i32.store offset=4
                                                                                                                                                get_local 0
                                                                                                                                                i32.const 1
                                                                                                                                                i32.store
                                                                                                                                                br 69 (;@1;)
                                                                                                                                              end
                                                                                                                                              get_local 2
                                                                                                                                              i32.const 16
                                                                                                                                              i32.add
                                                                                                                                              get_local 1
                                                                                                                                              call $<serde_cbor::de::Deserializer<R>>::parse_f32::h90c725da6b4411ef
                                                                                                                                              get_local 2
                                                                                                                                              get_local 2
                                                                                                                                              i64.load offset=16
                                                                                                                                              tee_local 3
                                                                                                                                              i64.store offset=8
                                                                                                                                              get_local 3
                                                                                                                                              i64.const 32
                                                                                                                                              i64.shr_u
                                                                                                                                              i32.wrap/i64
                                                                                                                                              set_local 1
                                                                                                                                              get_local 3
                                                                                                                                              i32.wrap/i64
                                                                                                                                              i32.const 1
                                                                                                                                              i32.ne
                                                                                                                                              br_if 35 (;@34;)
                                                                                                                                              get_local 0
                                                                                                                                              i32.const 1
                                                                                                                                              i32.store
                                                                                                                                              get_local 0
                                                                                                                                              get_local 1
                                                                                                                                              i32.store offset=4
                                                                                                                                              br 68 (;@1;)
                                                                                                                                            end
                                                                                                                                            get_local 2
                                                                                                                                            i32.const 8
                                                                                                                                            i32.store offset=16
                                                                                                                                            get_local 1
                                                                                                                                            get_local 2
                                                                                                                                            i32.const 16
                                                                                                                                            i32.add
                                                                                                                                            call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                                                                                                            set_local 1
                                                                                                                                            get_local 0
                                                                                                                                            i32.const 1
                                                                                                                                            i32.store
                                                                                                                                            get_local 0
                                                                                                                                            get_local 1
                                                                                                                                            i32.store offset=4
                                                                                                                                            br 67 (;@1;)
                                                                                                                                          end
                                                                                                                                          get_local 0
                                                                                                                                          i32.const 0
                                                                                                                                          i32.store
                                                                                                                                          get_local 0
                                                                                                                                          i32.const 8
                                                                                                                                          i32.add
                                                                                                                                          i32.const 259
                                                                                                                                          i32.store16
                                                                                                                                          br 66 (;@1;)
                                                                                                                                        end
                                                                                                                                        get_local 0
                                                                                                                                        i32.const 0
                                                                                                                                        i32.store
                                                                                                                                        get_local 0
                                                                                                                                        i32.const 8
                                                                                                                                        i32.add
                                                                                                                                        i32.const 4
                                                                                                                                        i32.store8
                                                                                                                                        br 65 (;@1;)
                                                                                                                                      end
                                                                                                                                      get_local 0
                                                                                                                                      i32.const 0
                                                                                                                                      i32.store
                                                                                                                                      get_local 0
                                                                                                                                      i32.const 8
                                                                                                                                      i32.add
                                                                                                                                      i32.const 4
                                                                                                                                      i32.store8
                                                                                                                                      br 64 (;@1;)
                                                                                                                                    end
                                                                                                                                    get_local 2
                                                                                                                                    i32.const 16
                                                                                                                                    i32.add
                                                                                                                                    get_local 1
                                                                                                                                    call $<serde_cbor::de::Deserializer<R>>::parse_f16::he33c0046e54ea908
                                                                                                                                    get_local 2
                                                                                                                                    get_local 2
                                                                                                                                    i64.load offset=16
                                                                                                                                    tee_local 3
                                                                                                                                    i64.store offset=8
                                                                                                                                    get_local 3
                                                                                                                                    i64.const 32
                                                                                                                                    i64.shr_u
                                                                                                                                    i32.wrap/i64
                                                                                                                                    set_local 1
                                                                                                                                    get_local 3
                                                                                                                                    i32.wrap/i64
                                                                                                                                    i32.const 1
                                                                                                                                    i32.ne
                                                                                                                                    br_if 31 (;@33;)
                                                                                                                                    get_local 0
                                                                                                                                    i32.const 1
                                                                                                                                    i32.store
                                                                                                                                    get_local 0
                                                                                                                                    get_local 1
                                                                                                                                    i32.store offset=4
                                                                                                                                    br 63 (;@1;)
                                                                                                                                  end
                                                                                                                                  get_local 2
                                                                                                                                  i32.const 16
                                                                                                                                  i32.add
                                                                                                                                  get_local 1
                                                                                                                                  call $<serde_cbor::de::Deserializer<R>>::parse_f64::h1400f5a66ceed2f3
                                                                                                                                  get_local 2
                                                                                                                                  i32.load offset=16
                                                                                                                                  i32.const 1
                                                                                                                                  i32.ne
                                                                                                                                  br_if 31 (;@32;)
                                                                                                                                  get_local 0
                                                                                                                                  get_local 2
                                                                                                                                  i32.load offset=20
                                                                                                                                  i32.store offset=4
                                                                                                                                  get_local 0
                                                                                                                                  i32.const 1
                                                                                                                                  i32.store
                                                                                                                                  br 62 (;@1;)
                                                                                                                                end
                                                                                                                                get_local 2
                                                                                                                                i32.const 9
                                                                                                                                i32.store offset=16
                                                                                                                                get_local 1
                                                                                                                                get_local 2
                                                                                                                                i32.const 16
                                                                                                                                i32.add
                                                                                                                                call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                                                                                                set_local 1
                                                                                                                                get_local 0
                                                                                                                                i32.const 1
                                                                                                                                i32.store
                                                                                                                                get_local 0
                                                                                                                                get_local 1
                                                                                                                                i32.store offset=4
                                                                                                                                br 61 (;@1;)
                                                                                                                              end
                                                                                                                              get_local 2
                                                                                                                              i32.const 16
                                                                                                                              i32.add
                                                                                                                              get_local 1
                                                                                                                              call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                                              get_local 2
                                                                                                                              get_local 2
                                                                                                                              i64.load offset=16
                                                                                                                              tee_local 3
                                                                                                                              i64.store offset=8
                                                                                                                              get_local 3
                                                                                                                              i32.wrap/i64
                                                                                                                              tee_local 5
                                                                                                                              i32.const 65535
                                                                                                                              i32.and
                                                                                                                              i32.const 1
                                                                                                                              i32.ne
                                                                                                                              br_if 30 (;@31;)
                                                                                                                              get_local 0
                                                                                                                              i32.const 1
                                                                                                                              i32.store
                                                                                                                              get_local 0
                                                                                                                              get_local 3
                                                                                                                              i64.const 32
                                                                                                                              i64.shr_u
                                                                                                                              i64.store32 offset=4
                                                                                                                              br 60 (;@1;)
                                                                                                                            end
                                                                                                                            get_local 2
                                                                                                                            i32.const 16
                                                                                                                            i32.add
                                                                                                                            get_local 1
                                                                                                                            call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                                            get_local 2
                                                                                                                            get_local 2
                                                                                                                            i64.load offset=16
                                                                                                                            tee_local 3
                                                                                                                            i64.store offset=8
                                                                                                                            get_local 3
                                                                                                                            i64.const 32
                                                                                                                            i64.shr_u
                                                                                                                            i32.wrap/i64
                                                                                                                            set_local 5
                                                                                                                            get_local 3
                                                                                                                            i32.wrap/i64
                                                                                                                            i32.const 1
                                                                                                                            i32.ne
                                                                                                                            br_if 30 (;@30;)
                                                                                                                            get_local 0
                                                                                                                            i32.const 1
                                                                                                                            i32.store
                                                                                                                            get_local 0
                                                                                                                            get_local 5
                                                                                                                            i32.store offset=4
                                                                                                                            br 59 (;@1;)
                                                                                                                          end
                                                                                                                          get_local 1
                                                                                                                          get_local 1
                                                                                                                          i32.load8_u offset=24
                                                                                                                          i32.const -1
                                                                                                                          i32.add
                                                                                                                          tee_local 5
                                                                                                                          i32.store8 offset=24
                                                                                                                          get_local 5
                                                                                                                          i32.const 255
                                                                                                                          i32.and
                                                                                                                          i32.eqz
                                                                                                                          br_if 48 (;@11;)
                                                                                                                          get_local 2
                                                                                                                          i32.const 10
                                                                                                                          i32.store8 offset=16
                                                                                                                          get_local 0
                                                                                                                          get_local 2
                                                                                                                          i32.const 16
                                                                                                                          i32.add
                                                                                                                          get_local 2
                                                                                                                          i32.const 8
                                                                                                                          i32.add
                                                                                                                          call $<serde_cbor::error::Error as serde::de::Error>::invalid_type::hec4e9cef5b88938e
                                                                                                                          i32.store offset=4
                                                                                                                          get_local 0
                                                                                                                          i32.const 1
                                                                                                                          i32.store
                                                                                                                          get_local 1
                                                                                                                          i32.const 24
                                                                                                                          i32.add
                                                                                                                          tee_local 0
                                                                                                                          get_local 0
                                                                                                                          i32.load8_u
                                                                                                                          i32.const 1
                                                                                                                          i32.add
                                                                                                                          i32.store8
                                                                                                                          br 58 (;@1;)
                                                                                                                        end
                                                                                                                        get_local 2
                                                                                                                        i32.const 16
                                                                                                                        i32.add
                                                                                                                        get_local 1
                                                                                                                        call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                                        get_local 2
                                                                                                                        i32.load offset=16
                                                                                                                        i32.const 1
                                                                                                                        i32.ne
                                                                                                                        br_if 30 (;@28;)
                                                                                                                        get_local 0
                                                                                                                        get_local 2
                                                                                                                        i32.load offset=20
                                                                                                                        i32.store offset=4
                                                                                                                        get_local 0
                                                                                                                        i32.const 1
                                                                                                                        i32.store
                                                                                                                        br 57 (;@1;)
                                                                                                                      end
                                                                                                                      get_local 2
                                                                                                                      i32.const 16
                                                                                                                      i32.add
                                                                                                                      get_local 1
                                                                                                                      call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                                      get_local 2
                                                                                                                      get_local 2
                                                                                                                      i64.load offset=16
                                                                                                                      tee_local 3
                                                                                                                      i64.store offset=8
                                                                                                                      get_local 3
                                                                                                                      i32.wrap/i64
                                                                                                                      tee_local 5
                                                                                                                      i32.const 65535
                                                                                                                      i32.and
                                                                                                                      i32.const 1
                                                                                                                      i32.ne
                                                                                                                      br_if 30 (;@27;)
                                                                                                                      get_local 0
                                                                                                                      i32.const 1
                                                                                                                      i32.store
                                                                                                                      get_local 0
                                                                                                                      get_local 3
                                                                                                                      i64.const 32
                                                                                                                      i64.shr_u
                                                                                                                      i64.store32 offset=4
                                                                                                                      br 56 (;@1;)
                                                                                                                    end
                                                                                                                    get_local 2
                                                                                                                    i32.const 16
                                                                                                                    i32.add
                                                                                                                    get_local 1
                                                                                                                    call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                                    get_local 2
                                                                                                                    get_local 2
                                                                                                                    i64.load offset=16
                                                                                                                    tee_local 3
                                                                                                                    i64.store offset=8
                                                                                                                    get_local 3
                                                                                                                    i64.const 32
                                                                                                                    i64.shr_u
                                                                                                                    i32.wrap/i64
                                                                                                                    set_local 5
                                                                                                                    get_local 3
                                                                                                                    i32.wrap/i64
                                                                                                                    i32.const 1
                                                                                                                    i32.ne
                                                                                                                    br_if 30 (;@26;)
                                                                                                                    get_local 0
                                                                                                                    i32.const 1
                                                                                                                    i32.store
                                                                                                                    get_local 0
                                                                                                                    get_local 5
                                                                                                                    i32.store offset=4
                                                                                                                    br 55 (;@1;)
                                                                                                                  end
                                                                                                                  get_local 1
                                                                                                                  get_local 1
                                                                                                                  i32.load8_u offset=24
                                                                                                                  i32.const -1
                                                                                                                  i32.add
                                                                                                                  tee_local 5
                                                                                                                  i32.store8 offset=24
                                                                                                                  get_local 5
                                                                                                                  i32.const 255
                                                                                                                  i32.and
                                                                                                                  i32.eqz
                                                                                                                  br_if 45 (;@10;)
                                                                                                                  get_local 2
                                                                                                                  i32.const 11
                                                                                                                  i32.store8 offset=16
                                                                                                                  get_local 0
                                                                                                                  get_local 2
                                                                                                                  i32.const 16
                                                                                                                  i32.add
                                                                                                                  get_local 2
                                                                                                                  i32.const 8
                                                                                                                  i32.add
                                                                                                                  call $<serde_cbor::error::Error as serde::de::Error>::invalid_type::hec4e9cef5b88938e
                                                                                                                  i32.store offset=4
                                                                                                                  get_local 0
                                                                                                                  i32.const 1
                                                                                                                  i32.store
                                                                                                                  get_local 1
                                                                                                                  i32.const 24
                                                                                                                  i32.add
                                                                                                                  tee_local 0
                                                                                                                  get_local 0
                                                                                                                  i32.load8_u
                                                                                                                  i32.const 1
                                                                                                                  i32.add
                                                                                                                  i32.store8
                                                                                                                  br 54 (;@1;)
                                                                                                                end
                                                                                                                get_local 2
                                                                                                                i32.const 16
                                                                                                                i32.add
                                                                                                                get_local 1
                                                                                                                call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                                get_local 2
                                                                                                                i32.load offset=16
                                                                                                                i32.const 1
                                                                                                                i32.ne
                                                                                                                br_if 30 (;@24;)
                                                                                                                get_local 0
                                                                                                                get_local 2
                                                                                                                i32.load offset=20
                                                                                                                i32.store offset=4
                                                                                                                get_local 0
                                                                                                                i32.const 1
                                                                                                                i32.store
                                                                                                                br 53 (;@1;)
                                                                                                              end
                                                                                                              get_local 2
                                                                                                              i32.const 16
                                                                                                              i32.add
                                                                                                              get_local 1
                                                                                                              call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                              get_local 2
                                                                                                              get_local 2
                                                                                                              i64.load offset=16
                                                                                                              tee_local 3
                                                                                                              i64.store offset=8
                                                                                                              get_local 3
                                                                                                              i64.const 32
                                                                                                              i64.shr_u
                                                                                                              set_local 7
                                                                                                              get_local 3
                                                                                                              i32.wrap/i64
                                                                                                              i32.const 1
                                                                                                              i32.ne
                                                                                                              br_if 30 (;@23;)
                                                                                                              get_local 0
                                                                                                              i32.const 1
                                                                                                              i32.store
                                                                                                              get_local 0
                                                                                                              get_local 7
                                                                                                              i64.store32 offset=4
                                                                                                              br 52 (;@1;)
                                                                                                            end
                                                                                                            get_local 2
                                                                                                            i32.const 16
                                                                                                            i32.add
                                                                                                            get_local 1
                                                                                                            call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                            get_local 2
                                                                                                            get_local 2
                                                                                                            i64.load offset=16
                                                                                                            tee_local 3
                                                                                                            i64.store offset=8
                                                                                                            get_local 3
                                                                                                            i32.wrap/i64
                                                                                                            i32.const 1
                                                                                                            i32.ne
                                                                                                            br_if 30 (;@22;)
                                                                                                            get_local 0
                                                                                                            i32.const 1
                                                                                                            i32.store
                                                                                                            get_local 0
                                                                                                            get_local 3
                                                                                                            i64.const 32
                                                                                                            i64.shr_u
                                                                                                            i64.store32 offset=4
                                                                                                            br 51 (;@1;)
                                                                                                          end
                                                                                                          get_local 2
                                                                                                          i32.const 16
                                                                                                          i32.add
                                                                                                          get_local 1
                                                                                                          call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                          get_local 2
                                                                                                          i32.load offset=16
                                                                                                          i32.const 1
                                                                                                          i32.ne
                                                                                                          br_if 30 (;@21;)
                                                                                                          get_local 0
                                                                                                          get_local 2
                                                                                                          i32.load offset=20
                                                                                                          i32.store offset=4
                                                                                                          get_local 0
                                                                                                          i32.const 1
                                                                                                          i32.store
                                                                                                          br 50 (;@1;)
                                                                                                        end
                                                                                                        get_local 2
                                                                                                        i32.const 16
                                                                                                        i32.add
                                                                                                        get_local 1
                                                                                                        call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                        get_local 2
                                                                                                        get_local 2
                                                                                                        i64.load offset=16
                                                                                                        tee_local 3
                                                                                                        i64.store offset=8
                                                                                                        get_local 3
                                                                                                        i32.wrap/i64
                                                                                                        i32.const 65535
                                                                                                        i32.and
                                                                                                        i32.const 1
                                                                                                        i32.ne
                                                                                                        br_if 31 (;@19;)
                                                                                                        get_local 0
                                                                                                        i32.const 1
                                                                                                        i32.store
                                                                                                        get_local 0
                                                                                                        get_local 3
                                                                                                        i64.const 32
                                                                                                        i64.shr_u
                                                                                                        i64.store32 offset=4
                                                                                                        br 49 (;@1;)
                                                                                                      end
                                                                                                      get_local 2
                                                                                                      i32.const 16
                                                                                                      i32.add
                                                                                                      get_local 1
                                                                                                      call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                      get_local 2
                                                                                                      i32.load offset=16
                                                                                                      i32.const 1
                                                                                                      i32.ne
                                                                                                      br_if 31 (;@18;)
                                                                                                      get_local 0
                                                                                                      get_local 2
                                                                                                      i32.load offset=20
                                                                                                      i32.store offset=4
                                                                                                      get_local 0
                                                                                                      i32.const 1
                                                                                                      i32.store
                                                                                                      br 48 (;@1;)
                                                                                                    end
                                                                                                    get_local 2
                                                                                                    i32.const 16
                                                                                                    i32.add
                                                                                                    get_local 1
                                                                                                    call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                    get_local 2
                                                                                                    get_local 2
                                                                                                    i64.load offset=16
                                                                                                    tee_local 3
                                                                                                    i64.store offset=8
                                                                                                    get_local 3
                                                                                                    i64.const 32
                                                                                                    i64.shr_u
                                                                                                    set_local 7
                                                                                                    get_local 3
                                                                                                    i32.wrap/i64
                                                                                                    i32.const 1
                                                                                                    i32.ne
                                                                                                    br_if 31 (;@17;)
                                                                                                    get_local 0
                                                                                                    i32.const 1
                                                                                                    i32.store
                                                                                                    get_local 0
                                                                                                    get_local 7
                                                                                                    i64.store32 offset=4
                                                                                                    br 47 (;@1;)
                                                                                                  end
                                                                                                  get_local 2
                                                                                                  i32.const 16
                                                                                                  i32.add
                                                                                                  get_local 1
                                                                                                  call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                  get_local 2
                                                                                                  get_local 2
                                                                                                  i64.load offset=16
                                                                                                  tee_local 3
                                                                                                  i64.store offset=8
                                                                                                  get_local 3
                                                                                                  i32.wrap/i64
                                                                                                  i32.const 65535
                                                                                                  i32.and
                                                                                                  i32.const 1
                                                                                                  i32.ne
                                                                                                  br_if 32 (;@15;)
                                                                                                  get_local 0
                                                                                                  i32.const 1
                                                                                                  i32.store
                                                                                                  get_local 0
                                                                                                  get_local 3
                                                                                                  i64.const 32
                                                                                                  i64.shr_u
                                                                                                  i64.store32 offset=4
                                                                                                  br 46 (;@1;)
                                                                                                end
                                                                                                get_local 2
                                                                                                i32.const 16
                                                                                                i32.add
                                                                                                get_local 1
                                                                                                call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                get_local 2
                                                                                                i32.load offset=16
                                                                                                i32.const 1
                                                                                                i32.ne
                                                                                                br_if 32 (;@14;)
                                                                                                get_local 0
                                                                                                get_local 2
                                                                                                i32.load offset=20
                                                                                                i32.store offset=4
                                                                                                get_local 0
                                                                                                i32.const 1
                                                                                                i32.store
                                                                                                br 45 (;@1;)
                                                                                              end
                                                                                              get_local 2
                                                                                              i32.const 16
                                                                                              i32.add
                                                                                              get_local 1
                                                                                              call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                              get_local 2
                                                                                              get_local 2
                                                                                              i64.load offset=16
                                                                                              tee_local 3
                                                                                              i64.store offset=8
                                                                                              get_local 3
                                                                                              i32.wrap/i64
                                                                                              i32.const 65535
                                                                                              i32.and
                                                                                              i32.const 1
                                                                                              i32.ne
                                                                                              br_if 33 (;@12;)
                                                                                              get_local 0
                                                                                              i32.const 1
                                                                                              i32.store
                                                                                              get_local 0
                                                                                              get_local 3
                                                                                              i64.const 32
                                                                                              i64.shr_u
                                                                                              i64.store32 offset=4
                                                                                              br 44 (;@1;)
                                                                                            end
                                                                                            get_local 4
                                                                                            i32.const -32
                                                                                            i32.add
                                                                                            i32.const 255
                                                                                            i32.and
                                                                                            i32.const 24
                                                                                            i32.ge_u
                                                                                            br_if 35 (;@9;)
                                                                                            get_local 0
                                                                                            i32.const 0
                                                                                            i32.store
                                                                                            get_local 0
                                                                                            i32.const 8
                                                                                            i32.add
                                                                                            i32.const 0
                                                                                            i32.store8
                                                                                            get_local 0
                                                                                            i32.const 16
                                                                                            i32.add
                                                                                            i64.const 2233785415175766016
                                                                                            get_local 3
                                                                                            i64.const 56
                                                                                            i64.shl
                                                                                            i64.sub
                                                                                            i64.const 56
                                                                                            i64.shr_s
                                                                                            i64.store
                                                                                            br 43 (;@1;)
                                                                                          end
                                                                                          get_local 2
                                                                                          i32.const 8
                                                                                          i32.add
                                                                                          call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                                                                          get_local 0
                                                                                          get_local 1
                                                                                          get_local 5
                                                                                          i32.const 16
                                                                                          i32.shr_u
                                                                                          call $<serde_cbor::de::Deserializer<R>>::parse_bytes::h8d209499b1e6d083
                                                                                          br 42 (;@1;)
                                                                                        end
                                                                                        get_local 2
                                                                                        i32.const 8
                                                                                        i32.add
                                                                                        call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                                                                        get_local 0
                                                                                        get_local 1
                                                                                        get_local 5
                                                                                        call $<serde_cbor::de::Deserializer<R>>::parse_bytes::h8d209499b1e6d083
                                                                                        br 41 (;@1;)
                                                                                      end
                                                                                      get_local 2
                                                                                      i32.const 24
                                                                                      i32.add
                                                                                      i32.load
                                                                                      set_local 1
                                                                                      get_local 2
                                                                                      i32.load offset=20
                                                                                      set_local 5
                                                                                      get_local 2
                                                                                      i32.const 16
                                                                                      i32.add
                                                                                      call $core::ptr::real_drop_in_place::hb70ab21c6ffbb524
                                                                                      get_local 0
                                                                                      get_local 5
                                                                                      get_local 1
                                                                                      call $<<serde_cbor::value::value::ObjectKey as serde::de::Deserialize<'de>>::deserialize::ObjectKeyVisitor as serde::de::Visitor<'de>>::visit_bytes::h88ae286d08ebc3ed
                                                                                      br 40 (;@1;)
                                                                                    end
                                                                                    get_local 2
                                                                                    i32.const 8
                                                                                    i32.add
                                                                                    call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                                                                    get_local 0
                                                                                    get_local 1
                                                                                    get_local 5
                                                                                    i32.const 8
                                                                                    i32.shr_u
                                                                                    i32.const 255
                                                                                    i32.and
                                                                                    call $<serde_cbor::de::Deserializer<R>>::parse_bytes::h8d209499b1e6d083
                                                                                    br 39 (;@1;)
                                                                                  end
                                                                                  get_local 2
                                                                                  i64.load offset=24
                                                                                  set_local 3
                                                                                  get_local 2
                                                                                  i32.const 16
                                                                                  i32.add
                                                                                  call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                                                                  get_local 3
                                                                                  i64.const 4294967296
                                                                                  i64.lt_u
                                                                                  br_if 31 (;@8;)
                                                                                  get_local 2
                                                                                  i32.const 6
                                                                                  i32.store offset=16
                                                                                  get_local 1
                                                                                  get_local 2
                                                                                  i32.const 16
                                                                                  i32.add
                                                                                  call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                                                  set_local 1
                                                                                  get_local 0
                                                                                  i32.const 1
                                                                                  i32.store
                                                                                  get_local 0
                                                                                  get_local 1
                                                                                  i32.store offset=4
                                                                                  br 38 (;@1;)
                                                                                end
                                                                                get_local 2
                                                                                i32.const 8
                                                                                i32.add
                                                                                call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                                                                get_local 0
                                                                                get_local 1
                                                                                get_local 5
                                                                                i32.const 16
                                                                                i32.shr_u
                                                                                call $<serde_cbor::de::Deserializer<R>>::parse_str::h5054e38486ff4f2d
                                                                                br 37 (;@1;)
                                                                              end
                                                                              get_local 2
                                                                              i32.const 8
                                                                              i32.add
                                                                              call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                                                              get_local 0
                                                                              get_local 1
                                                                              get_local 5
                                                                              call $<serde_cbor::de::Deserializer<R>>::parse_str::h5054e38486ff4f2d
                                                                              br 36 (;@1;)
                                                                            end
                                                                            get_local 2
                                                                            i32.const 24
                                                                            i32.add
                                                                            i32.load
                                                                            set_local 1
                                                                            get_local 2
                                                                            i32.load offset=20
                                                                            set_local 5
                                                                            get_local 2
                                                                            i32.const 16
                                                                            i32.add
                                                                            call $core::ptr::real_drop_in_place::h29ad1d3d8391eaf1
                                                                            get_local 0
                                                                            get_local 5
                                                                            get_local 1
                                                                            call $<<serde_cbor::value::value::ObjectKey as serde::de::Deserialize<'de>>::deserialize::ObjectKeyVisitor as serde::de::Visitor<'de>>::visit_str::h62dfda36ce08d187
                                                                            br 35 (;@1;)
                                                                          end
                                                                          get_local 2
                                                                          i32.const 8
                                                                          i32.add
                                                                          call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                                                          get_local 0
                                                                          get_local 1
                                                                          get_local 5
                                                                          i32.const 8
                                                                          i32.shr_u
                                                                          i32.const 255
                                                                          i32.and
                                                                          call $<serde_cbor::de::Deserializer<R>>::parse_str::h5054e38486ff4f2d
                                                                          br 34 (;@1;)
                                                                        end
                                                                        get_local 2
                                                                        i64.load offset=24
                                                                        set_local 3
                                                                        get_local 2
                                                                        i32.const 16
                                                                        i32.add
                                                                        call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                                                        get_local 3
                                                                        i64.const 4294967296
                                                                        i64.lt_u
                                                                        br_if 27 (;@7;)
                                                                        get_local 2
                                                                        i32.const 6
                                                                        i32.store offset=16
                                                                        get_local 1
                                                                        get_local 2
                                                                        i32.const 16
                                                                        i32.add
                                                                        call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                                        set_local 1
                                                                        get_local 0
                                                                        i32.const 1
                                                                        i32.store
                                                                        get_local 0
                                                                        get_local 1
                                                                        i32.store offset=4
                                                                        br 33 (;@1;)
                                                                      end
                                                                      get_local 2
                                                                      i32.const 8
                                                                      i32.add
                                                                      call $core::ptr::real_drop_in_place::hdec123f39e7fd47a
                                                                      get_local 0
                                                                      get_local 1
                                                                      f32.reinterpret/i32
                                                                      call $serde::de::Visitor::visit_f32::hcfe516f9d45f686b
                                                                      br 32 (;@1;)
                                                                    end
                                                                    get_local 2
                                                                    i32.const 8
                                                                    i32.add
                                                                    call $core::ptr::real_drop_in_place::hdec123f39e7fd47a
                                                                    get_local 0
                                                                    get_local 1
                                                                    f32.reinterpret/i32
                                                                    call $serde::de::Visitor::visit_f32::hcfe516f9d45f686b
                                                                    br 31 (;@1;)
                                                                  end
                                                                  get_local 2
                                                                  f64.load offset=24
                                                                  set_local 8
                                                                  get_local 2
                                                                  i32.const 16
                                                                  i32.add
                                                                  call $core::ptr::real_drop_in_place::h746cec3cc24d7b97
                                                                  get_local 0
                                                                  get_local 8
                                                                  call $serde::de::Visitor::visit_f64::hfc58297cdeaeb1cf
                                                                  br 30 (;@1;)
                                                                end
                                                                get_local 2
                                                                i32.const 8
                                                                i32.add
                                                                call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                                                get_local 0
                                                                get_local 1
                                                                get_local 5
                                                                i32.const 16
                                                                i32.shr_u
                                                                call $<serde_cbor::de::Deserializer<R>>::parse_array::hc3225e8a181135ab
                                                                br 29 (;@1;)
                                                              end
                                                              get_local 2
                                                              i32.const 8
                                                              i32.add
                                                              call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                                              get_local 0
                                                              get_local 1
                                                              get_local 5
                                                              call $<serde_cbor::de::Deserializer<R>>::parse_array::hc3225e8a181135ab
                                                              br 28 (;@1;)
                                                            end
                                                            get_local 2
                                                            i32.const 8
                                                            i32.add
                                                            call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                                            get_local 0
                                                            get_local 1
                                                            get_local 5
                                                            i32.const 8
                                                            i32.shr_u
                                                            i32.const 255
                                                            i32.and
                                                            call $<serde_cbor::de::Deserializer<R>>::parse_array::hc3225e8a181135ab
                                                            br 27 (;@1;)
                                                          end
                                                          get_local 2
                                                          i64.load offset=24
                                                          set_local 3
                                                          get_local 2
                                                          i32.const 16
                                                          i32.add
                                                          call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                                          get_local 3
                                                          i64.const 4294967296
                                                          i64.lt_u
                                                          br_if 21 (;@6;)
                                                          get_local 2
                                                          i32.const 6
                                                          i32.store offset=16
                                                          get_local 1
                                                          get_local 2
                                                          i32.const 16
                                                          i32.add
                                                          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                          set_local 1
                                                          get_local 0
                                                          i32.const 1
                                                          i32.store
                                                          get_local 0
                                                          get_local 1
                                                          i32.store offset=4
                                                          br 26 (;@1;)
                                                        end
                                                        get_local 2
                                                        i32.const 8
                                                        i32.add
                                                        call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                                        get_local 0
                                                        get_local 1
                                                        get_local 5
                                                        i32.const 16
                                                        i32.shr_u
                                                        call $<serde_cbor::de::Deserializer<R>>::parse_map::h03ebe0181ab7bf1d
                                                        br 25 (;@1;)
                                                      end
                                                      get_local 2
                                                      i32.const 8
                                                      i32.add
                                                      call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                                      get_local 0
                                                      get_local 1
                                                      get_local 5
                                                      call $<serde_cbor::de::Deserializer<R>>::parse_map::h03ebe0181ab7bf1d
                                                      br 24 (;@1;)
                                                    end
                                                    get_local 2
                                                    i32.const 8
                                                    i32.add
                                                    call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                                    get_local 0
                                                    get_local 1
                                                    get_local 5
                                                    i32.const 8
                                                    i32.shr_u
                                                    i32.const 255
                                                    i32.and
                                                    call $<serde_cbor::de::Deserializer<R>>::parse_map::h03ebe0181ab7bf1d
                                                    br 23 (;@1;)
                                                  end
                                                  get_local 2
                                                  i64.load offset=24
                                                  set_local 3
                                                  get_local 2
                                                  i32.const 16
                                                  i32.add
                                                  call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                                  get_local 3
                                                  i64.const 4294967296
                                                  i64.lt_u
                                                  br_if 18 (;@5;)
                                                  get_local 2
                                                  i32.const 6
                                                  i32.store offset=16
                                                  get_local 1
                                                  get_local 2
                                                  i32.const 16
                                                  i32.add
                                                  call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                  set_local 1
                                                  get_local 0
                                                  i32.const 1
                                                  i32.store
                                                  get_local 0
                                                  get_local 1
                                                  i32.store offset=4
                                                  br 22 (;@1;)
                                                end
                                                get_local 2
                                                i32.const 8
                                                i32.add
                                                call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                                get_local 0
                                                i32.const 16
                                                i32.add
                                                get_local 7
                                                i64.const -1
                                                i64.xor
                                                i64.store
                                                get_local 0
                                                i32.const 8
                                                i32.add
                                                i32.const 0
                                                i32.store8
                                                get_local 0
                                                i32.const 0
                                                i32.store
                                                br 21 (;@1;)
                                              end
                                              get_local 2
                                              i32.const 8
                                              i32.add
                                              call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                              br 19 (;@2;)
                                            end
                                            get_local 2
                                            i64.load offset=24
                                            set_local 3
                                            get_local 2
                                            i32.const 16
                                            i32.add
                                            call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                            get_local 3
                                            i64.const -1
                                            i64.le_s
                                            br_if 16 (;@4;)
                                            get_local 0
                                            i32.const 0
                                            i32.store
                                            get_local 0
                                            i32.const 16
                                            i32.add
                                            get_local 3
                                            i64.const -1
                                            i64.xor
                                            i64.store
                                            get_local 0
                                            i32.const 8
                                            i32.add
                                            i32.const 0
                                            i32.store8
                                            br 19 (;@1;)
                                          end
                                          get_local 2
                                          i32.const 8
                                          i32.add
                                          call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                          get_local 0
                                          i32.const 8
                                          i32.add
                                          i32.const 0
                                          i32.store8
                                          get_local 0
                                          i32.const 0
                                          i32.store
                                          get_local 0
                                          i32.const 16
                                          i32.add
                                          get_local 3
                                          i64.const 8
                                          i64.shr_u
                                          i64.const -1
                                          i64.xor
                                          i64.const -256
                                          i64.or
                                          i64.store
                                          br 18 (;@1;)
                                        end
                                        get_local 2
                                        i32.const 8
                                        i32.add
                                        call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                        get_local 0
                                        i32.const 8
                                        i32.add
                                        i32.const 0
                                        i32.store8
                                        get_local 0
                                        i32.const 0
                                        i32.store
                                        get_local 0
                                        i32.const 16
                                        i32.add
                                        get_local 3
                                        i64.const 16
                                        i64.shr_u
                                        i64.const -1
                                        i64.xor
                                        i64.const -65536
                                        i64.or
                                        i64.store
                                        br 17 (;@1;)
                                      end
                                      get_local 2
                                      i32.const 16
                                      i32.add
                                      call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                      br 15 (;@2;)
                                    end
                                    get_local 2
                                    i32.const 8
                                    i32.add
                                    call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                    get_local 0
                                    i32.const 16
                                    i32.add
                                    get_local 7
                                    i64.store
                                    get_local 0
                                    i32.const 8
                                    i32.add
                                    i32.const 0
                                    i32.store8
                                    get_local 0
                                    i32.const 0
                                    i32.store
                                    br 15 (;@1;)
                                  end
                                  get_local 2
                                  i32.const 8
                                  i32.add
                                  call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                  br 13 (;@2;)
                                end
                                get_local 2
                                i32.const 8
                                i32.add
                                call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                br 12 (;@2;)
                              end
                              get_local 2
                              i64.load offset=24
                              set_local 3
                              get_local 2
                              i32.const 16
                              i32.add
                              call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                              get_local 0
                              i32.const 16
                              i32.add
                              get_local 3
                              i64.store
                              get_local 0
                              i32.const 8
                              i32.add
                              i32.const 0
                              i32.store8
                              get_local 0
                              i32.const 0
                              i32.store
                              br 12 (;@1;)
                            end
                            get_local 2
                            i32.const 8
                            i32.add
                            call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                            get_local 0
                            i32.const 8
                            i32.add
                            i32.const 0
                            i32.store8
                            get_local 0
                            i32.const 0
                            i32.store
                            get_local 0
                            i32.const 16
                            i32.add
                            get_local 3
                            i64.const 8
                            i64.shr_u
                            i64.const 255
                            i64.and
                            i64.store
                            br 11 (;@1;)
                          end
                          get_local 2
                          i32.const 8
                          i32.add
                          call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                          get_local 0
                          i32.const 8
                          i32.add
                          i32.const 0
                          i32.store8
                          get_local 0
                          i32.const 0
                          i32.store
                          get_local 0
                          i32.const 16
                          i32.add
                          get_local 3
                          i64.const 16
                          i64.shr_u
                          i64.const 65535
                          i64.and
                          i64.store
                          br 10 (;@1;)
                        end
                        get_local 2
                        i32.const 13
                        i32.store offset=16
                        get_local 1
                        get_local 2
                        i32.const 16
                        i32.add
                        call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                        set_local 1
                        get_local 0
                        i32.const 1
                        i32.store
                        get_local 0
                        get_local 1
                        i32.store offset=4
                        br 9 (;@1;)
                      end
                      get_local 2
                      i32.const 13
                      i32.store offset=16
                      get_local 1
                      get_local 2
                      i32.const 16
                      i32.add
                      call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                      set_local 1
                      get_local 0
                      i32.const 1
                      i32.store
                      get_local 0
                      get_local 1
                      i32.store offset=4
                      br 8 (;@1;)
                    end
                    get_local 5
                    i32.const 60
                    i32.ne
                    br_if 5 (;@3;)
                    get_local 2
                    i32.const 8
                    i32.store offset=16
                    get_local 1
                    get_local 2
                    i32.const 16
                    i32.add
                    call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                    set_local 1
                    get_local 0
                    i32.const 1
                    i32.store
                    get_local 0
                    get_local 1
                    i32.store offset=4
                    br 7 (;@1;)
                  end
                  get_local 0
                  get_local 1
                  get_local 3
                  i32.wrap/i64
                  call $<serde_cbor::de::Deserializer<R>>::parse_bytes::h8d209499b1e6d083
                  br 6 (;@1;)
                end
                get_local 0
                get_local 1
                get_local 3
                i32.wrap/i64
                call $<serde_cbor::de::Deserializer<R>>::parse_str::h5054e38486ff4f2d
                br 5 (;@1;)
              end
              get_local 0
              get_local 1
              get_local 3
              i32.wrap/i64
              call $<serde_cbor::de::Deserializer<R>>::parse_array::hc3225e8a181135ab
              br 4 (;@1;)
            end
            get_local 0
            get_local 1
            get_local 3
            i32.wrap/i64
            call $<serde_cbor::de::Deserializer<R>>::parse_map::h03ebe0181ab7bf1d
            br 3 (;@1;)
          end
          get_local 2
          i32.const 5
          i32.store offset=16
          get_local 1
          get_local 2
          i32.const 16
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const -64
          i32.add
          i32.const 255
          i32.and
          i32.const 24
          i32.ge_u
          br_if 0 (;@3;)
          get_local 0
          get_local 1
          get_local 4
          i32.const 255
          i32.and
          i32.const -64
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::parse_bytes::h8d209499b1e6d083
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const -92
          i32.add
          i32.const 255
          i32.and
          i32.const 3
          i32.ge_u
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=16
          get_local 1
          get_local 2
          i32.const 16
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const -96
          i32.add
          i32.const 255
          i32.and
          i32.const 24
          i32.ge_u
          br_if 0 (;@3;)
          get_local 0
          get_local 1
          get_local 4
          i32.const 255
          i32.and
          i32.const -96
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::parse_str::h5054e38486ff4f2d
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const -124
          i32.add
          i32.const 255
          i32.and
          i32.const 3
          i32.ge_u
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=16
          get_local 1
          get_local 2
          i32.const 16
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          get_local 4
          i32.const 255
          i32.and
          tee_local 6
          i32.const 152
          i32.ge_u
          br_if 0 (;@3;)
          get_local 0
          get_local 1
          get_local 6
          i32.const -128
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::parse_array::hc3225e8a181135ab
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const 100
          i32.add
          i32.const 255
          i32.and
          i32.const 3
          i32.ge_u
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=16
          get_local 1
          get_local 2
          i32.const 16
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const 96
          i32.add
          i32.const 255
          i32.and
          i32.const 24
          i32.ge_u
          br_if 0 (;@3;)
          get_local 0
          get_local 1
          get_local 4
          i32.const 255
          i32.and
          i32.const -160
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::parse_map::h03ebe0181ab7bf1d
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const 68
          i32.add
          i32.const 255
          i32.and
          i32.const 3
          i32.ge_u
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=16
          get_local 1
          get_local 2
          i32.const 16
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        get_local 4
        i32.const 64
        i32.add
        i32.const 255
        i32.and
        i32.const 24
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          get_local 5
          i32.const 220
          i32.ne
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=16
          get_local 1
          get_local 2
          i32.const 16
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const 32
          i32.add
          i32.const 255
          i32.and
          i32.const 20
          i32.ge_u
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=16
          get_local 1
          get_local 2
          i32.const 16
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const 255
          i32.and
          i32.const 252
          i32.lt_u
          br_if 0 (;@3;)
          get_local 4
          i32.const 255
          i32.and
          i32.const 255
          i32.eq
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=16
          get_local 1
          get_local 2
          i32.const 16
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        call $std::panicking::begin_panic::h9d25ce91d6d8ef58
        unreachable
      end
      get_local 0
      get_local 1
      call $<serde_cbor::de::Deserializer<R>>::parse_value::h1a918e0cae4b9718
    end
    get_local 2
    i32.const 32
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5 (type 5) (param i32 i32)
    (local i32 i64)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 16
    i32.add
    get_local 1
    call $<serde_cbor::de::Deserializer<R>>::next::h6e15d341856c98a1
    get_local 2
    get_local 2
    i64.load offset=16
    tee_local 3
    i64.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        get_local 3
        i32.wrap/i64
        i32.const 255
        i32.and
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        get_local 0
        i32.const 1
        i32.store8
        get_local 0
        i32.const 4
        i32.add
        get_local 3
        i64.const 32
        i64.shr_u
        i64.store32
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          get_local 3
          i64.const 65280
          i64.and
          i64.const 256
          i64.ne
          br_if 0 (;@3;)
          get_local 0
          get_local 3
          i64.const 16
          i64.shr_u
          i32.wrap/i64
          i32.store8 offset=1
          i32.const 0
          set_local 1
          br 1 (;@2;)
        end
        get_local 2
        i32.const 2
        i32.store offset=16
        get_local 0
        i32.const 4
        i32.add
        get_local 1
        get_local 2
        i32.const 16
        i32.add
        call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
        i32.store
        i32.const 1
        set_local 1
      end
      get_local 0
      get_local 1
      i32.store8
      get_local 2
      i32.const 8
      i32.add
      call $core::ptr::real_drop_in_place::h4acc31ecbd8a805a
    end
    get_local 2
    i32.const 32
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::h5010e83d24b4ee3d (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::h33b0fba3a59a8b88
    end)
  (func $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c (type 2) (param i32 i32) (result i32)
    (local i32 i64)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 0
    i64.load32_u offset=8
    set_local 3
    get_local 2
    i32.const 8
    i32.add
    get_local 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    get_local 2
    get_local 1
    i64.load align=4
    i64.store
    get_local 2
    get_local 3
    call $serde_cbor::error::Error::syntax::h90dd629f5a41a36d
    set_local 1
    get_local 2
    i32.const 16
    i32.add
    set_global 0
    get_local 1)
  (func $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d (type 5) (param i32 i32)
    (local i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    i32.const 0
    set_local 3
    get_local 2
    i32.const 0
    i32.store16 offset=10
    get_local 2
    get_local 1
    get_local 2
    i32.const 10
    i32.add
    i32.const 2
    call $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read_into::h3c368b9e6f366db5
    tee_local 1
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        i32.const 4
        i32.add
        get_local 1
        i32.store
        i32.const 1
        set_local 3
        br 1 (;@1;)
      end
      get_local 2
      i32.const 12
      i32.add
      call $core::ptr::real_drop_in_place::he236952c6ed49d30
      get_local 0
      get_local 2
      i32.load16_u offset=10
      tee_local 1
      i32.const 24
      i32.shl
      get_local 1
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      i32.const 16
      i32.shr_u
      i32.store16 offset=2
    end
    get_local 0
    get_local 3
    i32.store16
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994 (type 5) (param i32 i32)
    (local i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    i32.const 0
    set_local 3
    get_local 2
    i32.const 0
    i32.store offset=8
    get_local 2
    get_local 1
    get_local 2
    i32.const 8
    i32.add
    i32.const 4
    call $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read_into::h3c368b9e6f366db5
    tee_local 1
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        get_local 1
        i32.store offset=4
        i32.const 1
        set_local 3
        br 1 (;@1;)
      end
      get_local 2
      i32.const 12
      i32.add
      call $core::ptr::real_drop_in_place::he236952c6ed49d30
      get_local 0
      get_local 2
      i32.load offset=8
      tee_local 1
      i32.const 24
      i32.shl
      get_local 1
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      get_local 1
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      get_local 1
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store offset=4
    end
    get_local 0
    get_local 3
    i32.store
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_indefinite_bytes::hb3989b60cb33ff75 (type 5) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 1
    i32.const 12
    i32.add
    tee_local 3
    call $<alloc::vec::Vec<T>>::clear::h9dc5423f20bd3d6b
    i32.const 0
    set_local 4
    get_local 2
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    set_local 5
    get_local 1
    i32.const 20
    i32.add
    set_local 6
    block  ;; label = @1
      loop  ;; label = @2
        get_local 2
        i32.const 32
        i32.add
        get_local 1
        call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
        get_local 2
        get_local 2
        i64.load offset=32
        tee_local 7
        i64.store offset=24
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        get_local 7
                        i32.wrap/i64
                        i32.const 255
                        i32.and
                        i32.const 1
                        i32.eq
                        br_if 0 (;@10;)
                        get_local 2
                        i32.const 24
                        i32.add
                        call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                        block  ;; label = @11
                          get_local 7
                          i64.const 8
                          i64.shr_u
                          i32.wrap/i64
                          tee_local 8
                          i32.const -64
                          i32.add
                          i32.const 255
                          i32.and
                          i32.const 24
                          i32.ge_u
                          br_if 0 (;@11;)
                          get_local 8
                          i32.const 255
                          i32.and
                          i32.const -64
                          i32.add
                          set_local 8
                          br 8 (;@3;)
                        end
                        get_local 8
                        i32.const 255
                        i32.and
                        tee_local 9
                        i32.const -88
                        i32.add
                        tee_local 8
                        i32.const 3
                        i32.gt_u
                        br_if 1 (;@9;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                get_local 8
                                br_table 0 (;@14;) 1 (;@13;) 2 (;@12;) 3 (;@11;) 0 (;@14;)
                              end
                              get_local 2
                              i32.const 32
                              i32.add
                              get_local 1
                              call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                              get_local 2
                              get_local 2
                              i64.load offset=32
                              tee_local 7
                              i64.store offset=24
                              get_local 7
                              i32.wrap/i64
                              tee_local 8
                              i32.const 255
                              i32.and
                              i32.const 1
                              i32.eq
                              br_if 5 (;@8;)
                              get_local 8
                              i32.const 8
                              i32.shr_u
                              i32.const 255
                              i32.and
                              set_local 8
                              get_local 2
                              i32.const 24
                              i32.add
                              call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                              br 10 (;@3;)
                            end
                            get_local 2
                            i32.const 32
                            i32.add
                            get_local 1
                            call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                            get_local 2
                            get_local 2
                            i64.load offset=32
                            tee_local 7
                            i64.store offset=24
                            get_local 7
                            i32.wrap/i64
                            tee_local 8
                            i32.const 65535
                            i32.and
                            i32.const 1
                            i32.eq
                            br_if 5 (;@7;)
                            get_local 8
                            i32.const 16
                            i32.shr_u
                            set_local 8
                            get_local 2
                            i32.const 24
                            i32.add
                            call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                            br 9 (;@3;)
                          end
                          get_local 2
                          i32.const 32
                          i32.add
                          get_local 1
                          call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                          get_local 2
                          get_local 2
                          i64.load offset=32
                          tee_local 7
                          i64.store offset=24
                          get_local 7
                          i64.const 32
                          i64.shr_u
                          i32.wrap/i64
                          set_local 8
                          get_local 7
                          i32.wrap/i64
                          i32.const 1
                          i32.eq
                          br_if 5 (;@6;)
                          get_local 2
                          i32.const 24
                          i32.add
                          call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                          br 8 (;@3;)
                        end
                        get_local 2
                        i32.const 32
                        i32.add
                        get_local 1
                        call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                        get_local 2
                        i32.load offset=32
                        i32.const 1
                        i32.eq
                        br_if 5 (;@5;)
                        get_local 5
                        i64.load
                        set_local 7
                        get_local 2
                        i32.const 32
                        i32.add
                        call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                        get_local 7
                        i64.const 4294967296
                        i64.ge_u
                        br_if 6 (;@4;)
                        get_local 7
                        i32.wrap/i64
                        set_local 8
                        br 7 (;@3;)
                      end
                      get_local 0
                      i32.const 1
                      i32.store
                      get_local 0
                      get_local 7
                      i64.const 32
                      i64.shr_u
                      i64.store32 offset=4
                      br 8 (;@1;)
                    end
                    block  ;; label = @9
                      get_local 9
                      i32.const 255
                      i32.ne
                      br_if 0 (;@9;)
                      get_local 2
                      i32.const 16
                      i32.add
                      get_local 3
                      get_local 4
                      call $<alloc::vec::Vec<T> as core::ops::index::Index<I>>::index::h3902ffbc51379078
                      get_local 2
                      i64.load offset=16
                      set_local 7
                      get_local 0
                      i32.const 0
                      i32.store
                      get_local 0
                      get_local 7
                      i64.store offset=4 align=4
                      br 8 (;@1;)
                    end
                    get_local 2
                    i32.const 9
                    i32.store offset=32
                    get_local 1
                    get_local 2
                    i32.const 32
                    i32.add
                    call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                    set_local 8
                    get_local 0
                    i32.const 1
                    i32.store
                    get_local 0
                    get_local 8
                    i32.store offset=4
                    br 7 (;@1;)
                  end
                  get_local 0
                  i32.const 1
                  i32.store
                  get_local 0
                  get_local 7
                  i64.const 32
                  i64.shr_u
                  i64.store32 offset=4
                  br 6 (;@1;)
                end
                get_local 0
                i32.const 1
                i32.store
                get_local 0
                get_local 7
                i64.const 32
                i64.shr_u
                i64.store32 offset=4
                br 5 (;@1;)
              end
              get_local 0
              i32.const 1
              i32.store
              get_local 0
              get_local 8
              i32.store offset=4
              br 4 (;@1;)
            end
            get_local 0
            get_local 2
            i32.load offset=36
            i32.store offset=4
            get_local 0
            i32.const 1
            i32.store
            br 3 (;@1;)
          end
          get_local 2
          i32.const 6
          i32.store offset=32
          get_local 1
          get_local 2
          i32.const 32
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 8
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 8
          i32.store offset=4
          br 2 (;@1;)
        end
        get_local 2
        i32.const 32
        i32.add
        get_local 1
        get_local 8
        call $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read::ha7a244439c0dbf0c
        block  ;; label = @3
          get_local 2
          i32.load offset=32
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            get_local 2
            i32.load offset=36
            tee_local 9
            i32.eqz
            br_if 0 (;@4;)
            get_local 5
            i32.load
            set_local 10
            block  ;; label = @5
              get_local 8
              get_local 4
              i32.add
              tee_local 8
              get_local 6
              i32.load
              i32.le_u
              br_if 0 (;@5;)
              get_local 3
              get_local 8
              call $<alloc::vec::Vec<T>>::resize::h7d4791f6bfb8b467
            end
            get_local 2
            i32.const 8
            i32.add
            get_local 3
            get_local 4
            call $<alloc::vec::Vec<T> as core::ops::index::IndexMut<I>>::index_mut::h0ff9523da78d489a
            get_local 2
            i32.load offset=8
            get_local 2
            i32.load offset=12
            get_local 9
            get_local 10
            call $core::slice::<impl [T]>::copy_from_slice::h6683ac0449de7820
            get_local 8
            set_local 4
            br 2 (;@2;)
          end
          get_local 8
          get_local 4
          i32.add
          set_local 4
          br 1 (;@2;)
        end
      end
      get_local 0
      get_local 2
      i32.load offset=36
      i32.store offset=4
      get_local 0
      i32.const 1
      i32.store
    end
    get_local 2
    i32.const 48
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6 (type 5) (param i32 i32)
    (local i32 i64)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i64.const 0
    i64.store
    get_local 2
    get_local 1
    get_local 2
    i32.const 8
    call $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read_into::h3c368b9e6f366db5
    tee_local 1
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        get_local 1
        i32.store offset=4
        i32.const 1
        set_local 1
        br 1 (;@1;)
      end
      get_local 2
      i32.const 12
      i32.add
      call $core::ptr::real_drop_in_place::he236952c6ed49d30
      get_local 0
      i32.const 8
      i32.add
      get_local 2
      i64.load
      tee_local 3
      i64.const 56
      i64.shl
      get_local 3
      i64.const 40
      i64.shl
      i64.const 71776119061217280
      i64.and
      i64.or
      get_local 3
      i64.const 24
      i64.shl
      i64.const 280375465082880
      i64.and
      get_local 3
      i64.const 8
      i64.shl
      i64.const 1095216660480
      i64.and
      i64.or
      i64.or
      get_local 3
      i64.const 8
      i64.shr_u
      i64.const 4278190080
      i64.and
      get_local 3
      i64.const 24
      i64.shr_u
      i64.const 16711680
      i64.and
      i64.or
      get_local 3
      i64.const 40
      i64.shr_u
      i64.const 65280
      i64.and
      get_local 3
      i64.const 56
      i64.shr_u
      i64.or
      i64.or
      i64.or
      i64.store
      i32.const 0
      set_local 1
    end
    get_local 0
    get_local 1
    i32.store
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_indefinite_str::h1f671b35f261b74d (type 5) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 1
    i32.const 12
    i32.add
    tee_local 3
    call $<alloc::vec::Vec<T>>::clear::h9dc5423f20bd3d6b
    i32.const 0
    set_local 4
    get_local 2
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    set_local 5
    get_local 1
    i32.const 20
    i32.add
    set_local 6
    block  ;; label = @1
      loop  ;; label = @2
        get_local 2
        i32.const 32
        i32.add
        get_local 1
        call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
        get_local 2
        get_local 2
        i64.load offset=32
        tee_local 7
        i64.store offset=24
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        get_local 7
                        i32.wrap/i64
                        i32.const 255
                        i32.and
                        i32.const 1
                        i32.eq
                        br_if 0 (;@10;)
                        get_local 2
                        i32.const 24
                        i32.add
                        call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                        block  ;; label = @11
                          get_local 7
                          i64.const 8
                          i64.shr_u
                          i32.wrap/i64
                          tee_local 8
                          i32.const -96
                          i32.add
                          i32.const 255
                          i32.and
                          i32.const 24
                          i32.ge_u
                          br_if 0 (;@11;)
                          get_local 8
                          i32.const 255
                          i32.and
                          i32.const -96
                          i32.add
                          set_local 8
                          br 8 (;@3;)
                        end
                        get_local 8
                        i32.const 255
                        i32.and
                        tee_local 9
                        i32.const -120
                        i32.add
                        tee_local 8
                        i32.const 3
                        i32.gt_u
                        br_if 1 (;@9;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                get_local 8
                                br_table 0 (;@14;) 1 (;@13;) 2 (;@12;) 3 (;@11;) 0 (;@14;)
                              end
                              get_local 2
                              i32.const 32
                              i32.add
                              get_local 1
                              call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                              get_local 2
                              get_local 2
                              i64.load offset=32
                              tee_local 7
                              i64.store offset=24
                              get_local 7
                              i32.wrap/i64
                              tee_local 8
                              i32.const 255
                              i32.and
                              i32.const 1
                              i32.eq
                              br_if 5 (;@8;)
                              get_local 8
                              i32.const 8
                              i32.shr_u
                              i32.const 255
                              i32.and
                              set_local 8
                              get_local 2
                              i32.const 24
                              i32.add
                              call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                              br 10 (;@3;)
                            end
                            get_local 2
                            i32.const 32
                            i32.add
                            get_local 1
                            call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                            get_local 2
                            get_local 2
                            i64.load offset=32
                            tee_local 7
                            i64.store offset=24
                            get_local 7
                            i32.wrap/i64
                            tee_local 8
                            i32.const 65535
                            i32.and
                            i32.const 1
                            i32.eq
                            br_if 5 (;@7;)
                            get_local 8
                            i32.const 16
                            i32.shr_u
                            set_local 8
                            get_local 2
                            i32.const 24
                            i32.add
                            call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                            br 9 (;@3;)
                          end
                          get_local 2
                          i32.const 32
                          i32.add
                          get_local 1
                          call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                          get_local 2
                          get_local 2
                          i64.load offset=32
                          tee_local 7
                          i64.store offset=24
                          get_local 7
                          i64.const 32
                          i64.shr_u
                          i32.wrap/i64
                          set_local 8
                          get_local 7
                          i32.wrap/i64
                          i32.const 1
                          i32.eq
                          br_if 5 (;@6;)
                          get_local 2
                          i32.const 24
                          i32.add
                          call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                          br 8 (;@3;)
                        end
                        get_local 2
                        i32.const 32
                        i32.add
                        get_local 1
                        call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                        get_local 2
                        i32.load offset=32
                        i32.const 1
                        i32.eq
                        br_if 5 (;@5;)
                        get_local 5
                        i64.load
                        set_local 7
                        get_local 2
                        i32.const 32
                        i32.add
                        call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                        get_local 7
                        i64.const 4294967296
                        i64.ge_u
                        br_if 6 (;@4;)
                        get_local 7
                        i32.wrap/i64
                        set_local 8
                        br 7 (;@3;)
                      end
                      get_local 0
                      i32.const 1
                      i32.store
                      get_local 0
                      get_local 7
                      i64.const 32
                      i64.shr_u
                      i64.store32 offset=4
                      br 8 (;@1;)
                    end
                    block  ;; label = @9
                      get_local 9
                      i32.const 255
                      i32.ne
                      br_if 0 (;@9;)
                      get_local 2
                      i32.const 16
                      i32.add
                      get_local 3
                      get_local 4
                      call $<alloc::vec::Vec<T> as core::ops::index::Index<I>>::index::h3902ffbc51379078
                      get_local 0
                      get_local 1
                      get_local 2
                      i32.load offset=16
                      get_local 2
                      i32.load offset=20
                      call $<serde_cbor::de::Deserializer<R>>::convert_str::h371c1b4030a159fe
                      br 8 (;@1;)
                    end
                    get_local 2
                    i32.const 9
                    i32.store offset=32
                    get_local 1
                    get_local 2
                    i32.const 32
                    i32.add
                    call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                    set_local 8
                    get_local 0
                    i32.const 1
                    i32.store
                    get_local 0
                    get_local 8
                    i32.store offset=4
                    br 7 (;@1;)
                  end
                  get_local 0
                  i32.const 1
                  i32.store
                  get_local 0
                  get_local 7
                  i64.const 32
                  i64.shr_u
                  i64.store32 offset=4
                  br 6 (;@1;)
                end
                get_local 0
                i32.const 1
                i32.store
                get_local 0
                get_local 7
                i64.const 32
                i64.shr_u
                i64.store32 offset=4
                br 5 (;@1;)
              end
              get_local 0
              i32.const 1
              i32.store
              get_local 0
              get_local 8
              i32.store offset=4
              br 4 (;@1;)
            end
            get_local 0
            get_local 2
            i32.load offset=36
            i32.store offset=4
            get_local 0
            i32.const 1
            i32.store
            br 3 (;@1;)
          end
          get_local 2
          i32.const 6
          i32.store offset=32
          get_local 1
          get_local 2
          i32.const 32
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 8
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 8
          i32.store offset=4
          br 2 (;@1;)
        end
        get_local 2
        i32.const 32
        i32.add
        get_local 1
        get_local 8
        call $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read::ha7a244439c0dbf0c
        block  ;; label = @3
          get_local 2
          i32.load offset=32
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            get_local 2
            i32.load offset=36
            tee_local 9
            i32.eqz
            br_if 0 (;@4;)
            get_local 5
            i32.load
            set_local 10
            block  ;; label = @5
              get_local 8
              get_local 4
              i32.add
              tee_local 8
              get_local 6
              i32.load
              i32.le_u
              br_if 0 (;@5;)
              get_local 3
              get_local 8
              call $<alloc::vec::Vec<T>>::resize::h7d4791f6bfb8b467
            end
            get_local 2
            i32.const 8
            i32.add
            get_local 3
            get_local 4
            call $<alloc::vec::Vec<T> as core::ops::index::IndexMut<I>>::index_mut::h0ff9523da78d489a
            get_local 2
            i32.load offset=8
            get_local 2
            i32.load offset=12
            get_local 9
            get_local 10
            call $core::slice::<impl [T]>::copy_from_slice::h6683ac0449de7820
            get_local 8
            set_local 4
            br 2 (;@2;)
          end
          get_local 8
          get_local 4
          i32.add
          set_local 4
          br 1 (;@2;)
        end
      end
      get_local 0
      get_local 2
      i32.load offset=36
      i32.store offset=4
      get_local 0
      i32.const 1
      i32.store
    end
    get_local 2
    i32.const 48
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_f32::h90c725da6b4411ef (type 5) (param i32 i32)
    (local i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    i32.const 0
    set_local 3
    get_local 2
    i32.const 0
    i32.store offset=8
    get_local 2
    get_local 1
    get_local 2
    i32.const 8
    i32.add
    i32.const 4
    call $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read_into::h3c368b9e6f366db5
    tee_local 1
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        get_local 1
        i32.store offset=4
        i32.const 1
        set_local 3
        br 1 (;@1;)
      end
      get_local 2
      i32.const 12
      i32.add
      call $core::ptr::real_drop_in_place::he236952c6ed49d30
      get_local 0
      get_local 2
      i32.load offset=8
      tee_local 1
      i32.const 24
      i32.shl
      get_local 1
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      get_local 1
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      get_local 1
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store offset=4
    end
    get_local 0
    get_local 3
    i32.store
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_f16::he33c0046e54ea908 (type 5) (param i32 i32)
    (local i32 i64)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 8
    i32.add
    get_local 1
    call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
    get_local 2
    get_local 2
    i64.load offset=8
    tee_local 3
    i64.store
    i32.const 1
    set_local 1
    block  ;; label = @1
      block  ;; label = @2
        get_local 3
        i32.wrap/i64
        i32.const 65535
        i32.and
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        get_local 0
        get_local 3
        i64.const 32
        i64.shr_u
        i64.store32 offset=4
        br 1 (;@1;)
      end
      get_local 0
      get_local 3
      i64.const 16
      i64.shr_u
      i32.wrap/i64
      call $half::<impl core::convert::From<half::f16> for f32>::from::h7b1a5524fb955309
      f32.store offset=4
      get_local 2
      call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
      i32.const 0
      set_local 1
    end
    get_local 0
    get_local 1
    i32.store
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_f64::h1400f5a66ceed2f3 (type 5) (param i32 i32)
    (local i32 i64)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i64.const 0
    i64.store
    get_local 2
    get_local 1
    get_local 2
    i32.const 8
    call $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read_into::h3c368b9e6f366db5
    tee_local 1
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        get_local 1
        i32.store offset=4
        i32.const 1
        set_local 1
        br 1 (;@1;)
      end
      get_local 2
      i32.const 12
      i32.add
      call $core::ptr::real_drop_in_place::he236952c6ed49d30
      get_local 0
      i32.const 8
      i32.add
      get_local 2
      i64.load
      tee_local 3
      i64.const 56
      i64.shl
      get_local 3
      i64.const 40
      i64.shl
      i64.const 71776119061217280
      i64.and
      i64.or
      get_local 3
      i64.const 24
      i64.shl
      i64.const 280375465082880
      i64.and
      get_local 3
      i64.const 8
      i64.shl
      i64.const 1095216660480
      i64.and
      i64.or
      i64.or
      get_local 3
      i64.const 8
      i64.shr_u
      i64.const 4278190080
      i64.and
      get_local 3
      i64.const 24
      i64.shr_u
      i64.const 16711680
      i64.and
      i64.or
      get_local 3
      i64.const 40
      i64.shr_u
      i64.const 65280
      i64.and
      get_local 3
      i64.const 56
      i64.shr_u
      i64.or
      i64.or
      i64.or
      i64.store
      i32.const 0
      set_local 1
    end
    get_local 0
    get_local 1
    i32.store
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $<serde_cbor::error::Error as serde::de::Error>::invalid_type::hec4e9cef5b88938e (type 2) (param i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 1057060
    i32.store offset=4
    get_local 2
    get_local 1
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.load8_u
        i32.const 7
        i32.ne
        br_if 0 (;@2;)
        get_local 2
        i32.const 28
        i32.add
        i32.const 1
        i32.store
        get_local 2
        i32.const 5
        i32.store offset=36
        get_local 2
        i64.const 1
        i64.store offset=12 align=4
        get_local 2
        i32.const 1057276
        i32.store offset=8
        get_local 2
        get_local 2
        i32.store offset=32
        get_local 2
        get_local 2
        i32.const 32
        i32.add
        i32.store offset=24
        get_local 2
        i32.const 8
        i32.add
        call $<serde_cbor::error::Error as serde::de::Error>::custom::hc79ef1c117e5b828
        set_local 0
        br 1 (;@1;)
      end
      get_local 2
      i32.const 44
      i32.add
      i32.const 5
      i32.store
      get_local 2
      i32.const 28
      i32.add
      i32.const 2
      i32.store
      get_local 2
      i32.const 6
      i32.store offset=36
      get_local 2
      get_local 0
      i32.store offset=32
      get_local 2
      i64.const 2
      i64.store offset=12 align=4
      get_local 2
      i32.const 1057284
      i32.store offset=8
      get_local 2
      get_local 2
      i32.store offset=40
      get_local 2
      get_local 2
      i32.const 32
      i32.add
      i32.store offset=24
      get_local 2
      i32.const 8
      i32.add
      call $<serde_cbor::error::Error as serde::de::Error>::custom::hc79ef1c117e5b828
      set_local 0
    end
    get_local 2
    i32.const 48
    i32.add
    set_global 0
    get_local 0)
  (func $core::ptr::real_drop_in_place::hb3e3a30f187a5fed (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load16_u
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::h33b0fba3a59a8b88
    end)
  (func $<serde_cbor::de::Deserializer<R>>::parse_bytes::h8d209499b1e6d083 (type 10) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 3
    set_global 0
    get_local 1
    i32.const 12
    i32.add
    call $<alloc::vec::Vec<T>>::clear::h9dc5423f20bd3d6b
    get_local 3
    get_local 1
    get_local 2
    call $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read::ha7a244439c0dbf0c
    block  ;; label = @1
      block  ;; label = @2
        get_local 3
        i32.load
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        get_local 0
        get_local 3
        i32.load offset=4
        i32.store offset=4
        get_local 0
        i32.const 1
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        get_local 3
        i32.load offset=4
        tee_local 2
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        get_local 2
        get_local 3
        i32.const 8
        i32.add
        i32.load
        call $<<serde_cbor::value::value::ObjectKey as serde::de::Deserialize<'de>>::deserialize::ObjectKeyVisitor as serde::de::Visitor<'de>>::visit_bytes::h88ae286d08ebc3ed
        br 1 (;@1;)
      end
      get_local 0
      get_local 1
      i32.const 12
      i32.add
      i32.load
      get_local 1
      i32.const 20
      i32.add
      i32.load
      call $<<serde_cbor::value::value::ObjectKey as serde::de::Deserialize<'de>>::deserialize::ObjectKeyVisitor as serde::de::Visitor<'de>>::visit_bytes::h88ae286d08ebc3ed
    end
    get_local 3
    i32.const 16
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::h6a6feacd50401bc9 (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::h33b0fba3a59a8b88
    end)
  (func $core::ptr::real_drop_in_place::hb70ab21c6ffbb524 (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::h33b0fba3a59a8b88
    end)
  (func $<<serde_cbor::value::value::ObjectKey as serde::de::Deserialize<'de>>::deserialize::ObjectKeyVisitor as serde::de::Visitor<'de>>::visit_bytes::h88ae286d08ebc3ed (type 10) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 1
    get_local 2
    call $alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned::h6fbdcae70eb63b1d
    get_local 3
    i32.const 28
    i32.add
    get_local 3
    i32.const 8
    i32.add
    i32.load
    i32.store align=1
    get_local 0
    i32.const 8
    i32.add
    i32.const 1
    i32.store8
    get_local 0
    i32.const 0
    i32.store
    get_local 3
    get_local 3
    i64.load
    i64.store offset=20 align=1
    get_local 0
    i32.const 9
    i32.add
    get_local 3
    i64.load offset=17 align=1
    i64.store align=1
    get_local 0
    i32.const 16
    i32.add
    get_local 3
    i32.const 24
    i32.add
    i64.load align=1
    i64.store align=1
    get_local 3
    i32.const 32
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::h8a4af4463c92ac7b (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::h33b0fba3a59a8b88
    end)
  (func $<serde_cbor::de::Deserializer<R>>::parse_str::h5054e38486ff4f2d (type 10) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 3
    set_global 0
    get_local 1
    i32.const 12
    i32.add
    call $<alloc::vec::Vec<T>>::clear::h9dc5423f20bd3d6b
    get_local 3
    get_local 1
    get_local 2
    call $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read::ha7a244439c0dbf0c
    block  ;; label = @1
      block  ;; label = @2
        get_local 3
        i32.load
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        get_local 0
        get_local 3
        i32.load offset=4
        i32.store offset=4
        get_local 0
        i32.const 1
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 3
            i32.load offset=4
            tee_local 2
            i32.eqz
            br_if 0 (;@4;)
            get_local 3
            i32.const 16
            i32.add
            get_local 1
            get_local 2
            get_local 3
            i32.const 8
            i32.add
            i32.load
            call $<serde_cbor::de::Deserializer<R>>::convert_str::h371c1b4030a159fe
            get_local 3
            i32.load offset=16
            i32.const 1
            i32.ne
            br_if 1 (;@3;)
            get_local 0
            get_local 3
            i32.load offset=20
            i32.store offset=4
            get_local 0
            i32.const 1
            i32.store
            br 3 (;@1;)
          end
          get_local 3
          i32.const 16
          i32.add
          get_local 1
          get_local 1
          i32.const 12
          i32.add
          i32.load
          get_local 1
          i32.const 20
          i32.add
          i32.load
          call $<serde_cbor::de::Deserializer<R>>::convert_str::h371c1b4030a159fe
          get_local 3
          i32.load offset=16
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
          get_local 0
          get_local 3
          i32.load offset=20
          i32.store offset=4
          get_local 0
          i32.const 1
          i32.store
          br 2 (;@1;)
        end
        get_local 3
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i32.load
        set_local 1
        get_local 3
        i32.load offset=20
        set_local 2
        get_local 3
        i32.const 16
        i32.add
        call $core::ptr::real_drop_in_place::h29ad1d3d8391eaf1
        get_local 0
        get_local 2
        get_local 1
        call $<<serde_cbor::value::value::ObjectKey as serde::de::Deserialize<'de>>::deserialize::ObjectKeyVisitor as serde::de::Visitor<'de>>::visit_str::h62dfda36ce08d187
        br 1 (;@1;)
      end
      get_local 3
      i32.const 24
      i32.add
      i32.load
      set_local 1
      get_local 3
      i32.load offset=20
      set_local 2
      get_local 3
      i32.const 16
      i32.add
      call $core::ptr::real_drop_in_place::h29ad1d3d8391eaf1
      get_local 0
      get_local 2
      get_local 1
      call $<<serde_cbor::value::value::ObjectKey as serde::de::Deserialize<'de>>::deserialize::ObjectKeyVisitor as serde::de::Visitor<'de>>::visit_str::h62dfda36ce08d187
    end
    get_local 3
    i32.const 32
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::h29ad1d3d8391eaf1 (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::h33b0fba3a59a8b88
    end)
  (func $<<serde_cbor::value::value::ObjectKey as serde::de::Deserialize<'de>>::deserialize::ObjectKeyVisitor as serde::de::Visitor<'de>>::visit_str::h62dfda36ce08d187 (type 10) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 1
    get_local 2
    call $alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned::h6fbdcae70eb63b1d
    get_local 3
    i32.const 28
    i32.add
    get_local 3
    i32.const 8
    i32.add
    i32.load
    i32.store align=1
    get_local 0
    i32.const 8
    i32.add
    i32.const 2
    i32.store8
    get_local 0
    i32.const 0
    i32.store
    get_local 3
    get_local 3
    i64.load
    i64.store offset=20 align=1
    get_local 0
    i32.const 9
    i32.add
    get_local 3
    i64.load offset=17 align=1
    i64.store align=1
    get_local 0
    i32.const 16
    i32.add
    get_local 3
    i32.const 24
    i32.add
    i64.load align=1
    i64.store align=1
    get_local 3
    i32.const 32
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::hdec123f39e7fd47a (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::h33b0fba3a59a8b88
    end)
  (func $serde::de::Visitor::visit_f32::hcfe516f9d45f686b (type 16) (param i32 f32)
    get_local 0
    get_local 1
    f64.promote/f32
    call $serde::de::Visitor::visit_f64::hfc58297cdeaeb1cf)
  (func $core::ptr::real_drop_in_place::h746cec3cc24d7b97 (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::h33b0fba3a59a8b88
    end)
  (func $serde::de::Visitor::visit_f64::hfc58297cdeaeb1cf (type 17) (param i32 f64)
    (local i32 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 3
    i32.store8 offset=8
    get_local 2
    get_local 1
    f64.store offset=16
    get_local 2
    i32.const 8
    i32.add
    get_local 2
    i32.const 24
    i32.add
    call $<serde_cbor::error::Error as serde::de::Error>::invalid_type::hec4e9cef5b88938e
    set_local 3
    get_local 0
    i32.const 1
    i32.store
    get_local 0
    get_local 3
    i32.store offset=4
    get_local 2
    i32.const 32
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_array::hc3225e8a181135ab (type 10) (param i32 i32 i32)
    (local i32 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 3
    set_global 0
    get_local 1
    get_local 1
    i32.load8_u offset=24
    i32.const -1
    i32.add
    tee_local 4
    i32.store8 offset=24
    block  ;; label = @1
      block  ;; label = @2
        get_local 4
        i32.const 255
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        i32.const 10
        i32.store8 offset=8
        get_local 0
        get_local 3
        i32.const 8
        i32.add
        get_local 3
        i32.const 24
        i32.add
        call $<serde_cbor::error::Error as serde::de::Error>::invalid_type::hec4e9cef5b88938e
        i32.store offset=4
        get_local 1
        i32.const 24
        i32.add
        tee_local 1
        get_local 1
        i32.load8_u
        i32.const 1
        i32.add
        i32.store8
        br 1 (;@1;)
      end
      get_local 3
      i32.const 13
      i32.store offset=8
      get_local 0
      get_local 1
      get_local 3
      i32.const 8
      i32.add
      call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
      i32.store offset=4
    end
    get_local 0
    i32.const 1
    i32.store
    get_local 3
    i32.const 32
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_map::h03ebe0181ab7bf1d (type 10) (param i32 i32 i32)
    (local i32 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 3
    set_global 0
    get_local 1
    get_local 1
    i32.load8_u offset=24
    i32.const -1
    i32.add
    tee_local 4
    i32.store8 offset=24
    block  ;; label = @1
      block  ;; label = @2
        get_local 4
        i32.const 255
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        i32.const 11
        i32.store8 offset=8
        get_local 0
        get_local 3
        i32.const 8
        i32.add
        get_local 3
        i32.const 24
        i32.add
        call $<serde_cbor::error::Error as serde::de::Error>::invalid_type::hec4e9cef5b88938e
        i32.store offset=4
        get_local 1
        i32.const 24
        i32.add
        tee_local 1
        get_local 1
        i32.load8_u
        i32.const 1
        i32.add
        i32.store8
        br 1 (;@1;)
      end
      get_local 3
      i32.const 13
      i32.store offset=8
      get_local 0
      get_local 1
      get_local 3
      i32.const 8
      i32.add
      call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
      i32.store offset=4
    end
    get_local 0
    i32.const 1
    i32.store
    get_local 3
    i32.const 32
    i32.add
    set_global 0)
  (func $std::panicking::begin_panic::h9d25ce91d6d8ef58 (type 7)
    i32.const 1057044
    call $std::panicking::rust_panic_with_hook::he95725d89173693d
    unreachable)
  (func $<serde_cbor::de::Deserializer<R>>::next::h6e15d341856c98a1 (type 5) (param i32 i32)
    (local i32 i32 i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    i32.const 0
    set_local 3
    block  ;; label = @1
      get_local 1
      i32.load offset=8
      tee_local 4
      get_local 1
      i32.load offset=4
      i32.ge_u
      br_if 0 (;@1;)
      get_local 1
      i32.load
      get_local 4
      i32.add
      i32.load8_u
      set_local 5
      i32.const 1
      set_local 3
      get_local 1
      i32.const 8
      i32.add
      get_local 4
      i32.const 1
      i32.add
      i32.store
    end
    get_local 2
    get_local 5
    i32.store8 offset=2
    get_local 2
    get_local 3
    i32.store8 offset=1
    get_local 2
    i32.const 0
    i32.store8
    get_local 0
    get_local 2
    call $<core::result::Result<T, E>>::map_err::h08448c9b9a302c6d
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::h4acc31ecbd8a805a (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::h33b0fba3a59a8b88
    end)
  (func $core::ptr::real_drop_in_place::h33b0fba3a59a8b88 (type 0) (param i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.load
        tee_local 1
        i32.load offset=8
        tee_local 2
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        get_local 2
        br_if 1 (;@1;)
        get_local 1
        i32.const 12
        i32.add
        call $core::ptr::real_drop_in_place::he33a927f4ac61062
        br 1 (;@1;)
      end
      get_local 1
      i32.const 12
      i32.add
      i32.load8_u
      i32.const 2
      i32.lt_u
      br_if 0 (;@1;)
      get_local 1
      i32.const 16
      i32.add
      tee_local 2
      i32.load
      tee_local 1
      i32.load
      get_local 1
      i32.load offset=4
      i32.load
      call_indirect 0
      block  ;; label = @2
        get_local 1
        i32.load offset=4
        tee_local 3
        i32.load offset=4
        tee_local 4
        i32.eqz
        br_if 0 (;@2;)
        get_local 1
        i32.load
        get_local 4
        get_local 3
        i32.load offset=8
        call $__rust_dealloc
      end
      get_local 2
      i32.load
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    get_local 0
    i32.load
    i32.const 24
    i32.const 8
    call $__rust_dealloc)
  (func $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read_into::h3c368b9e6f366db5 (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    i32.const 24
    i32.add
    get_local 0
    i32.const 4
    i32.add
    tee_local 4
    i32.load
    get_local 0
    i32.const 8
    i32.add
    tee_local 5
    i32.load
    get_local 2
    call $serde_cbor::read::SliceRead::end::he8393d29b4469914
    get_local 3
    get_local 3
    i64.load offset=24
    tee_local 6
    i64.store offset=16
    get_local 6
    i64.const 32
    i64.shr_u
    i32.wrap/i64
    set_local 7
    block  ;; label = @1
      get_local 6
      i32.wrap/i64
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      get_local 3
      i32.const 16
      i32.add
      call $core::ptr::real_drop_in_place::h5d9ccd24eddc2f3b
      get_local 3
      i32.const 8
      i32.add
      get_local 5
      i32.load
      get_local 7
      get_local 0
      i32.load
      get_local 4
      i32.load
      call $<core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::index::ha2848870752c2f43
      get_local 1
      get_local 2
      get_local 3
      i32.load offset=8
      get_local 3
      i32.load offset=12
      call $core::slice::<impl [T]>::copy_from_slice::h6683ac0449de7820
      get_local 5
      get_local 7
      i32.store
      i32.const 0
      set_local 7
    end
    get_local 3
    i32.const 32
    i32.add
    set_global 0
    get_local 7)
  (func $core::ptr::real_drop_in_place::he236952c6ed49d30 (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      call $core::ptr::real_drop_in_place::h33b0fba3a59a8b88
    end)
  (func $serde_cbor::error::Error::syntax::h90dd629f5a41a36d (type 8) (param i32 i64) (result i32)
    (local i32)
    i32.const 24
    call $alloc::alloc::exchange_malloc::h850213703570f63e
    tee_local 2
    get_local 1
    i64.store
    get_local 2
    get_local 0
    i64.load align=4
    i64.store offset=8 align=4
    get_local 2
    i32.const 16
    i32.add
    get_local 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store align=4
    get_local 2)
  (func $<alloc::vec::Vec<T>>::clear::h9dc5423f20bd3d6b (type 0) (param i32)
    get_local 0
    i32.const 0
    call $<alloc::vec::Vec<T>>::truncate::h2eb300de8663d34b)
  (func $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read::ha7a244439c0dbf0c (type 10) (param i32 i32 i32)
    (local i32 i32 i32 i64 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    i32.const 24
    i32.add
    get_local 1
    i32.const 4
    i32.add
    tee_local 4
    i32.load
    get_local 1
    i32.const 8
    i32.add
    tee_local 5
    i32.load
    get_local 2
    call $serde_cbor::read::SliceRead::end::he8393d29b4469914
    get_local 3
    get_local 3
    i64.load offset=24
    tee_local 6
    i64.store offset=16
    i32.const 1
    set_local 2
    get_local 6
    i64.const 32
    i64.shr_u
    i32.wrap/i64
    set_local 7
    block  ;; label = @1
      block  ;; label = @2
        get_local 6
        i32.wrap/i64
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        get_local 0
        get_local 7
        i32.store offset=4
        br 1 (;@1;)
      end
      get_local 3
      i32.const 16
      i32.add
      call $core::ptr::real_drop_in_place::h5d9ccd24eddc2f3b
      get_local 3
      i32.const 8
      i32.add
      get_local 5
      i32.load
      get_local 7
      get_local 1
      i32.load
      get_local 4
      i32.load
      call $<core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::index::ha2848870752c2f43
      get_local 3
      i64.load offset=8
      set_local 6
      get_local 5
      get_local 7
      i32.store
      get_local 0
      get_local 6
      i64.store offset=4 align=4
      i32.const 0
      set_local 2
    end
    get_local 0
    get_local 2
    i32.store
    get_local 3
    i32.const 32
    i32.add
    set_global 0)
  (func $<alloc::vec::Vec<T> as core::ops::index::Index<I>>::index::h3902ffbc51379078 (type 10) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    i32.const 8
    i32.add
    i32.const 0
    get_local 2
    get_local 1
    i32.load
    get_local 1
    i32.load offset=8
    call $<core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::index::ha2848870752c2f43
    get_local 0
    get_local 3
    i64.load offset=8
    i64.store align=4
    get_local 3
    i32.const 16
    i32.add
    set_global 0)
  (func $<alloc::vec::Vec<T>>::resize::h7d4791f6bfb8b467 (type 5) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 0
          i32.load offset=8
          tee_local 2
          get_local 1
          i32.ge_u
          br_if 0 (;@3;)
          get_local 0
          get_local 1
          get_local 2
          i32.sub
          tee_local 3
          call $<alloc::vec::Vec<T>>::reserve::h06e2b5ac0736880b
          get_local 0
          i32.load
          get_local 0
          i32.const 8
          i32.add
          i32.load
          tee_local 4
          i32.add
          set_local 5
          i32.const 1
          set_local 1
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                get_local 5
                get_local 1
                i32.add
                set_local 2
                get_local 1
                get_local 3
                i32.ge_u
                br_if 1 (;@5;)
                get_local 1
                i32.const 1
                i32.add
                tee_local 6
                get_local 1
                i32.lt_u
                br_if 2 (;@4;)
                get_local 2
                i32.const -1
                i32.add
                i32.const 0
                i32.store8
                get_local 6
                set_local 1
                br 0 (;@6;)
              end
            end
            get_local 3
            i32.eqz
            br_if 2 (;@2;)
          end
          get_local 2
          i32.const -1
          i32.add
          i32.const 0
          i32.store8
          get_local 4
          get_local 1
          i32.add
          set_local 1
          br 2 (;@1;)
        end
        get_local 0
        get_local 1
        call $<alloc::vec::Vec<T>>::truncate::h2eb300de8663d34b
        return
      end
      get_local 4
      get_local 1
      i32.add
      i32.const -1
      i32.add
      set_local 1
    end
    get_local 0
    i32.const 8
    i32.add
    get_local 1
    i32.store)
  (func $<alloc::vec::Vec<T> as core::ops::index::IndexMut<I>>::index_mut::h0ff9523da78d489a (type 10) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      get_local 1
      i32.load offset=8
      tee_local 3
      get_local 2
      i32.lt_u
      br_if 0 (;@1;)
      get_local 0
      get_local 3
      get_local 2
      i32.sub
      i32.store offset=4
      get_local 0
      get_local 1
      i32.load
      get_local 2
      i32.add
      i32.store
      return
    end
    get_local 2
    get_local 3
    call $core::slice::slice_index_order_fail::he8f13052c7c07340
    unreachable)
  (func $<serde_cbor::de::Deserializer<R>>::convert_str::h371c1b4030a159fe (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 4
    set_global 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      get_local 3
                      i32.eqz
                      br_if 0 (;@9;)
                      get_local 3
                      i32.const -7
                      i32.add
                      i32.const 0
                      get_local 3
                      i32.const 7
                      i32.gt_u
                      select
                      set_local 5
                      i32.const 0
                      set_local 6
                      loop  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                get_local 2
                                                get_local 6
                                                i32.add
                                                tee_local 7
                                                i32.load8_u
                                                tee_local 8
                                                i32.const 24
                                                i32.shl
                                                i32.const 24
                                                i32.shr_s
                                                tee_local 9
                                                i32.const 0
                                                i32.lt_s
                                                br_if 0 (;@22;)
                                                get_local 7
                                                i32.const 3
                                                i32.and
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                get_local 6
                                                i32.const 1
                                                i32.add
                                                set_local 6
                                                br 11 (;@11;)
                                              end
                                              i32.const 1
                                              set_local 7
                                              get_local 8
                                              i32.const 1050960
                                              i32.add
                                              i32.load8_u
                                              tee_local 10
                                              i32.const 4
                                              i32.eq
                                              br_if 1 (;@20;)
                                              get_local 10
                                              i32.const 3
                                              i32.eq
                                              br_if 2 (;@19;)
                                              get_local 10
                                              i32.const 2
                                              i32.ne
                                              br_if 13 (;@8;)
                                              get_local 6
                                              i32.const 1
                                              i32.add
                                              tee_local 8
                                              get_local 3
                                              i32.ge_u
                                              br_if 15 (;@6;)
                                              i32.const 256
                                              set_local 10
                                              i32.const 1
                                              set_local 7
                                              get_local 2
                                              get_local 8
                                              i32.add
                                              i32.load8_u
                                              i32.const 192
                                              i32.and
                                              i32.const 128
                                              i32.eq
                                              br_if 9 (;@12;)
                                              br 19 (;@2;)
                                            end
                                            block  ;; label = @21
                                              get_local 6
                                              get_local 5
                                              i32.ge_u
                                              br_if 0 (;@21;)
                                              loop  ;; label = @22
                                                get_local 2
                                                get_local 6
                                                i32.add
                                                tee_local 8
                                                i32.const 4
                                                i32.add
                                                i32.load
                                                get_local 8
                                                i32.load
                                                i32.or
                                                i32.const -2139062144
                                                i32.and
                                                br_if 1 (;@21;)
                                                get_local 6
                                                i32.const 8
                                                i32.add
                                                tee_local 6
                                                get_local 5
                                                i32.lt_u
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            get_local 6
                                            get_local 3
                                            i32.ge_u
                                            br_if 9 (;@11;)
                                            loop  ;; label = @21
                                              get_local 2
                                              get_local 6
                                              i32.add
                                              i32.load8_s
                                              i32.const 0
                                              i32.lt_s
                                              br_if 10 (;@11;)
                                              get_local 6
                                              i32.const 1
                                              i32.add
                                              tee_local 6
                                              get_local 3
                                              i32.lt_u
                                              br_if 0 (;@21;)
                                              br 10 (;@11;)
                                            end
                                          end
                                          i32.const 0
                                          set_local 10
                                          get_local 6
                                          i32.const 1
                                          i32.add
                                          tee_local 11
                                          get_local 3
                                          i32.ge_u
                                          br_if 14 (;@5;)
                                          get_local 2
                                          get_local 11
                                          i32.add
                                          i32.load8_u
                                          set_local 11
                                          get_local 8
                                          i32.const 240
                                          i32.eq
                                          br_if 1 (;@18;)
                                          get_local 8
                                          i32.const 244
                                          i32.ne
                                          br_if 2 (;@17;)
                                          get_local 11
                                          i32.const 24
                                          i32.shl
                                          i32.const 24
                                          i32.shr_s
                                          i32.const -1
                                          i32.gt_s
                                          br_if 11 (;@8;)
                                          get_local 11
                                          i32.const 255
                                          i32.and
                                          i32.const 144
                                          i32.lt_u
                                          br_if 3 (;@16;)
                                          br 11 (;@8;)
                                        end
                                        i32.const 0
                                        set_local 10
                                        get_local 6
                                        i32.const 1
                                        i32.add
                                        tee_local 11
                                        get_local 3
                                        i32.ge_u
                                        br_if 13 (;@5;)
                                        get_local 2
                                        get_local 11
                                        i32.add
                                        i32.load8_u
                                        set_local 11
                                        get_local 8
                                        i32.const 224
                                        i32.eq
                                        br_if 3 (;@15;)
                                        get_local 8
                                        i32.const 237
                                        i32.ne
                                        br_if 4 (;@14;)
                                        get_local 11
                                        i32.const 24
                                        i32.shl
                                        i32.const 24
                                        i32.shr_s
                                        i32.const -1
                                        i32.gt_s
                                        br_if 10 (;@8;)
                                        get_local 11
                                        i32.const 255
                                        i32.and
                                        i32.const 160
                                        i32.lt_u
                                        br_if 5 (;@13;)
                                        br 10 (;@8;)
                                      end
                                      get_local 11
                                      i32.const 112
                                      i32.add
                                      i32.const 255
                                      i32.and
                                      i32.const 48
                                      i32.lt_u
                                      br_if 1 (;@16;)
                                      br 9 (;@8;)
                                    end
                                    get_local 11
                                    i32.const 255
                                    i32.and
                                    i32.const 191
                                    i32.gt_u
                                    br_if 8 (;@8;)
                                    get_local 9
                                    i32.const 15
                                    i32.add
                                    i32.const 255
                                    i32.and
                                    i32.const 2
                                    i32.gt_u
                                    br_if 8 (;@8;)
                                    get_local 11
                                    i32.const 24
                                    i32.shl
                                    i32.const 24
                                    i32.shr_s
                                    i32.const 0
                                    i32.ge_s
                                    br_if 8 (;@8;)
                                  end
                                  get_local 6
                                  i32.const 2
                                  i32.add
                                  tee_local 8
                                  get_local 3
                                  i32.ge_u
                                  br_if 10 (;@5;)
                                  get_local 2
                                  get_local 8
                                  i32.add
                                  i32.load8_u
                                  i32.const 192
                                  i32.and
                                  i32.const 128
                                  i32.ne
                                  br_if 8 (;@7;)
                                  i32.const 0
                                  set_local 7
                                  get_local 6
                                  i32.const 3
                                  i32.add
                                  tee_local 8
                                  get_local 3
                                  i32.ge_u
                                  br_if 13 (;@2;)
                                  get_local 2
                                  get_local 8
                                  i32.add
                                  i32.load8_u
                                  i32.const 192
                                  i32.and
                                  i32.const 128
                                  i32.eq
                                  br_if 3 (;@12;)
                                  br 11 (;@4;)
                                end
                                get_local 11
                                i32.const 224
                                i32.and
                                i32.const 160
                                i32.eq
                                br_if 1 (;@13;)
                                br 6 (;@8;)
                              end
                              block  ;; label = @14
                                get_local 9
                                i32.const 31
                                i32.add
                                i32.const 255
                                i32.and
                                i32.const 12
                                i32.ge_u
                                br_if 0 (;@14;)
                                get_local 11
                                i32.const 24
                                i32.shl
                                i32.const 24
                                i32.shr_s
                                i32.const -1
                                i32.gt_s
                                br_if 6 (;@8;)
                                get_local 11
                                i32.const 255
                                i32.and
                                i32.const 192
                                i32.lt_u
                                br_if 1 (;@13;)
                                br 6 (;@8;)
                              end
                              get_local 11
                              i32.const 255
                              i32.and
                              i32.const 191
                              i32.gt_u
                              br_if 5 (;@8;)
                              get_local 9
                              i32.const 254
                              i32.and
                              i32.const 238
                              i32.ne
                              br_if 5 (;@8;)
                              get_local 11
                              i32.const 24
                              i32.shl
                              i32.const 24
                              i32.shr_s
                              i32.const 0
                              i32.ge_s
                              br_if 5 (;@8;)
                            end
                            i32.const 0
                            set_local 7
                            get_local 6
                            i32.const 2
                            i32.add
                            tee_local 8
                            get_local 3
                            i32.ge_u
                            br_if 10 (;@2;)
                            get_local 2
                            get_local 8
                            i32.add
                            i32.load8_u
                            i32.const 192
                            i32.and
                            i32.const 128
                            i32.ne
                            br_if 5 (;@7;)
                          end
                          get_local 8
                          i32.const 1
                          i32.add
                          set_local 6
                        end
                        get_local 6
                        get_local 3
                        i32.lt_u
                        br_if 0 (;@10;)
                      end
                    end
                    get_local 0
                    get_local 2
                    i32.store offset=4
                    get_local 0
                    i32.const 8
                    i32.add
                    get_local 3
                    i32.store
                    i32.const 0
                    set_local 6
                    br 7 (;@1;)
                  end
                  i32.const 256
                  set_local 10
                  br 5 (;@2;)
                end
                i32.const 512
                set_local 10
                br 3 (;@3;)
              end
              i32.const 0
              set_local 10
            end
            i32.const 0
            set_local 7
            br 2 (;@2;)
          end
          i32.const 768
          set_local 10
        end
        i32.const 1
        set_local 7
      end
      get_local 4
      get_local 10
      get_local 7
      i32.or
      i32.store offset=12
      get_local 1
      i64.load32_u offset=8
      set_local 12
      get_local 4
      get_local 6
      i32.store offset=8
      get_local 4
      i32.const 7
      i32.store offset=16
      get_local 0
      get_local 4
      i32.const 16
      i32.add
      get_local 12
      get_local 3
      get_local 6
      i32.sub
      i64.extend_u/i32
      i64.sub
      call $serde_cbor::error::Error::syntax::h90dd629f5a41a36d
      i32.store offset=4
      i32.const 1
      set_local 6
    end
    get_local 0
    get_local 6
    i32.store
    get_local 4
    i32.const 32
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::h328be3946e38230b (type 0) (param i32))
  (func $<T as serde::de::Expected>::fmt::hf33141608826437c (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $serde_cbor::read::SliceRead::end::he8393d29b4469914 (type 3) (param i32 i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 4
    set_global 0
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        get_local 3
        i32.add
        tee_local 3
        get_local 2
        i32.lt_u
        br_if 0 (;@2;)
        get_local 3
        get_local 1
        i32.gt_u
        br_if 0 (;@2;)
        get_local 0
        get_local 3
        i32.store offset=4
        i32.const 0
        set_local 2
        br 1 (;@1;)
      end
      get_local 4
      i32.const 2
      i32.store
      get_local 0
      get_local 4
      get_local 1
      i64.extend_u/i32
      call $serde_cbor::error::Error::syntax::h90dd629f5a41a36d
      i32.store offset=4
      i32.const 1
      set_local 2
    end
    get_local 0
    get_local 2
    i32.store
    get_local 4
    i32.const 16
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::h5d9ccd24eddc2f3b (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::h33b0fba3a59a8b88
    end)
  (func $<core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::index::ha2848870752c2f43 (type 18) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        get_local 1
        i32.lt_u
        br_if 0 (;@2;)
        get_local 4
        get_local 2
        i32.lt_u
        br_if 1 (;@1;)
        get_local 0
        get_local 2
        get_local 1
        i32.sub
        i32.store offset=4
        get_local 0
        get_local 3
        get_local 1
        i32.add
        i32.store
        return
      end
      get_local 1
      get_local 2
      call $core::slice::slice_index_order_fail::he8f13052c7c07340
      unreachable
    end
    get_local 2
    get_local 4
    call $core::slice::slice_index_len_fail::h8a287468a7a8e190
    unreachable)
  (func $core::slice::slice_index_order_fail::he8f13052c7c07340 (type 5) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 1
    i32.store offset=4
    get_local 2
    get_local 0
    i32.store
    get_local 2
    i32.const 44
    i32.add
    i32.const 7
    i32.store
    get_local 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    get_local 2
    i32.const 7
    i32.store offset=36
    get_local 2
    i64.const 2
    i64.store offset=12 align=4
    get_local 2
    i32.const 1058124
    i32.store offset=8
    get_local 2
    get_local 2
    i32.const 4
    i32.add
    i32.store offset=40
    get_local 2
    get_local 2
    i32.store offset=32
    get_local 2
    get_local 2
    i32.const 32
    i32.add
    i32.store offset=24
    get_local 2
    i32.const 8
    i32.add
    i32.const 1058140
    call $core::panicking::panic_fmt::h4f468f2affe6a61e
    unreachable)
  (func $core::slice::slice_index_len_fail::h8a287468a7a8e190 (type 5) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 1
    i32.store offset=4
    get_local 2
    get_local 0
    i32.store
    get_local 2
    i32.const 44
    i32.add
    i32.const 7
    i32.store
    get_local 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    get_local 2
    i32.const 7
    i32.store offset=36
    get_local 2
    i64.const 2
    i64.store offset=12 align=4
    get_local 2
    i32.const 1057692
    i32.store offset=8
    get_local 2
    get_local 2
    i32.const 4
    i32.add
    i32.store offset=40
    get_local 2
    get_local 2
    i32.store offset=32
    get_local 2
    get_local 2
    i32.const 32
    i32.add
    i32.store offset=24
    get_local 2
    i32.const 8
    i32.add
    i32.const 1057708
    call $core::panicking::panic_fmt::h4f468f2affe6a61e
    unreachable)
  (func $<core::result::Result<T, E>>::map_err::h08448c9b9a302c6d (type 5) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    block  ;; label = @1
      get_local 1
      i32.load8_u
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      get_local 2
      get_local 1
      i32.const 4
      i32.add
      i64.load align=4
      i64.store offset=8
      get_local 2
      i32.const 8
      i32.add
      call $serde_cbor::error::Error::io::hc91b95eae4583022
      set_local 1
      get_local 0
      i32.const 1
      i32.store8
      get_local 0
      i32.const 4
      i32.add
      get_local 1
      i32.store
      get_local 2
      i32.const 16
      i32.add
      set_global 0
      return
    end
    get_local 0
    i32.const 0
    i32.store8
    get_local 0
    get_local 1
    i32.load16_u offset=1 align=1
    i32.store16 offset=1 align=1
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::h1ad607e1ed7b8ef7 (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.load8_u
        tee_local 1
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        get_local 1
        i32.const 2
        i32.ne
        br_if 1 (;@1;)
        get_local 0
        i32.const 4
        i32.add
        call $core::ptr::real_drop_in_place::he33a927f4ac61062
        return
      end
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::he33a927f4ac61062
      return
    end)
  (func $<alloc::vec::Vec<T>>::truncate::h2eb300de8663d34b (type 5) (param i32 i32)
    (local i32 i32 i32)
    get_local 0
    i32.load offset=8
    tee_local 2
    set_local 3
    block  ;; label = @1
      loop  ;; label = @2
        get_local 1
        get_local 2
        i32.ge_u
        br_if 1 (;@1;)
        get_local 1
        i32.const 1
        i32.add
        tee_local 4
        get_local 1
        i32.lt_u
        br_if 1 (;@1;)
        get_local 3
        i32.const -1
        i32.add
        set_local 3
        get_local 4
        set_local 1
        br 0 (;@2;)
      end
    end
    get_local 0
    i32.const 8
    i32.add
    get_local 3
    i32.store)
  (func $<serde_cbor::de::Deserializer<R>>::parse_value::h0681e0fbfcf892e9 (type 5) (param i32 i32)
    (local i32 i64 i32 i32 i32 i64)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 32
    i32.add
    get_local 1
    call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
    get_local 2
    get_local 2
    i64.load offset=32
    tee_local 3
    i64.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        get_local 3
        i32.wrap/i64
        i32.const 255
        i32.and
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        get_local 0
        i32.const 1
        i32.store
        get_local 0
        get_local 3
        i64.const 32
        i64.shr_u
        i64.store32 offset=4
        br 1 (;@1;)
      end
      get_local 2
      i32.const 16
      i32.add
      call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
      block  ;; label = @2
        get_local 3
        i64.const 8
        i64.shr_u
        tee_local 3
        i32.wrap/i64
        tee_local 4
        i32.const 255
        i32.and
        i32.const 24
        i32.ge_u
        br_if 0 (;@2;)
        get_local 0
        i32.const 0
        i32.store
        get_local 0
        i32.const 16
        i32.add
        get_local 3
        i64.const 255
        i64.and
        i64.store
        get_local 0
        i32.const 8
        i32.add
        i32.const 0
        i32.store8
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      block  ;; label = @50
                                                                                                        block  ;; label = @51
                                                                                                          block  ;; label = @52
                                                                                                            block  ;; label = @53
                                                                                                              block  ;; label = @54
                                                                                                                block  ;; label = @55
                                                                                                                  block  ;; label = @56
                                                                                                                    block  ;; label = @57
                                                                                                                      block  ;; label = @58
                                                                                                                        block  ;; label = @59
                                                                                                                          block  ;; label = @60
                                                                                                                            block  ;; label = @61
                                                                                                                              block  ;; label = @62
                                                                                                                                block  ;; label = @63
                                                                                                                                  block  ;; label = @64
                                                                                                                                    block  ;; label = @65
                                                                                                                                      block  ;; label = @66
                                                                                                                                        block  ;; label = @67
                                                                                                                                          block  ;; label = @68
                                                                                                                                            block  ;; label = @69
                                                                                                                                              block  ;; label = @70
                                                                                                                                                block  ;; label = @71
                                                                                                                                                  block  ;; label = @72
                                                                                                                                                    block  ;; label = @73
                                                                                                                                                      block  ;; label = @74
                                                                                                                                                        block  ;; label = @75
                                                                                                                                                          block  ;; label = @76
                                                                                                                                                            block  ;; label = @77
                                                                                                                                                              block  ;; label = @78
                                                                                                                                                                block  ;; label = @79
                                                                                                                                                                  block  ;; label = @80
                                                                                                                                                                    block  ;; label = @81
                                                                                                                                                                      block  ;; label = @82
                                                                                                                                                                        block  ;; label = @83
                                                                                                                                                                          block  ;; label = @84
                                                                                                                                                                            block  ;; label = @85
                                                                                                                                                                              block  ;; label = @86
                                                                                                                                                                                block  ;; label = @87
                                                                                                                                                                                  block  ;; label = @88
                                                                                                                                                                                    block  ;; label = @89
                                                                                                                                                                                      block  ;; label = @90
                                                                                                                                                                                        block  ;; label = @91
                                                                                                                                                                                          block  ;; label = @92
                                                                                                                                                                                            block  ;; label = @93
                                                                                                                                                                                              block  ;; label = @94
                                                                                                                                                                                                block  ;; label = @95
                                                                                                                                                                                                  block  ;; label = @96
                                                                                                                                                                                                    block  ;; label = @97
                                                                                                                                                                                                      block  ;; label = @98
                                                                                                                                                                                                        block  ;; label = @99
                                                                                                                                                                                                          block  ;; label = @100
                                                                                                                                                                                                            block  ;; label = @101
                                                                                                                                                                                                              block  ;; label = @102
                                                                                                                                                                                                                block  ;; label = @103
                                                                                                                                                                                                                  get_local 4
                                                                                                                                                                                                                  i32.const 255
                                                                                                                                                                                                                  i32.and
                                                                                                                                                                                                                  tee_local 5
                                                                                                                                                                                                                  i32.const -244
                                                                                                                                                                                                                  i32.add
                                                                                                                                                                                                                  tee_local 6
                                                                                                                                                                                                                  i32.const 11
                                                                                                                                                                                                                  i32.le_u
                                                                                                                                                                                                                  br_if 0 (;@103;)
                                                                                                                                                                                                                  get_local 5
                                                                                                                                                                                                                  i32.const -88
                                                                                                                                                                                                                  i32.add
                                                                                                                                                                                                                  tee_local 6
                                                                                                                                                                                                                  i32.const 7
                                                                                                                                                                                                                  i32.le_u
                                                                                                                                                                                                                  br_if 1 (;@102;)
                                                                                                                                                                                                                  get_local 5
                                                                                                                                                                                                                  i32.const -120
                                                                                                                                                                                                                  i32.add
                                                                                                                                                                                                                  tee_local 6
                                                                                                                                                                                                                  i32.const 7
                                                                                                                                                                                                                  i32.le_u
                                                                                                                                                                                                                  br_if 2 (;@101;)
                                                                                                                                                                                                                  get_local 5
                                                                                                                                                                                                                  i32.const -152
                                                                                                                                                                                                                  i32.add
                                                                                                                                                                                                                  tee_local 6
                                                                                                                                                                                                                  i32.const 7
                                                                                                                                                                                                                  i32.le_u
                                                                                                                                                                                                                  br_if 3 (;@100;)
                                                                                                                                                                                                                  get_local 5
                                                                                                                                                                                                                  i32.const -184
                                                                                                                                                                                                                  i32.add
                                                                                                                                                                                                                  tee_local 6
                                                                                                                                                                                                                  i32.const 7
                                                                                                                                                                                                                  i32.le_u
                                                                                                                                                                                                                  br_if 4 (;@99;)
                                                                                                                                                                                                                  get_local 5
                                                                                                                                                                                                                  i32.const -24
                                                                                                                                                                                                                  i32.add
                                                                                                                                                                                                                  tee_local 6
                                                                                                                                                                                                                  i32.const 3
                                                                                                                                                                                                                  i32.le_u
                                                                                                                                                                                                                  br_if 6 (;@97;)
                                                                                                                                                                                                                  get_local 5
                                                                                                                                                                                                                  i32.const -56
                                                                                                                                                                                                                  i32.add
                                                                                                                                                                                                                  tee_local 6
                                                                                                                                                                                                                  i32.const 3
                                                                                                                                                                                                                  i32.le_u
                                                                                                                                                                                                                  br_if 5 (;@98;)
                                                                                                                                                                                                                  get_local 5
                                                                                                                                                                                                                  i32.const -216
                                                                                                                                                                                                                  i32.add
                                                                                                                                                                                                                  tee_local 5
                                                                                                                                                                                                                  i32.const 3
                                                                                                                                                                                                                  i32.gt_u
                                                                                                                                                                                                                  br_if 7 (;@96;)
                                                                                                                                                                                                                  block  ;; label = @104
                                                                                                                                                                                                                    get_local 5
                                                                                                                                                                                                                    br_table 0 (;@104;) 39 (;@65;) 34 (;@70;) 37 (;@67;) 0 (;@104;)
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                  get_local 2
                                                                                                                                                                                                                  i32.const 32
                                                                                                                                                                                                                  i32.add
                                                                                                                                                                                                                  get_local 1
                                                                                                                                                                                                                  call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                                                                  get_local 2
                                                                                                                                                                                                                  get_local 2
                                                                                                                                                                                                                  i64.load offset=32
                                                                                                                                                                                                                  tee_local 3
                                                                                                                                                                                                                  i64.store offset=16
                                                                                                                                                                                                                  get_local 3
                                                                                                                                                                                                                  i32.wrap/i64
                                                                                                                                                                                                                  i32.const 255
                                                                                                                                                                                                                  i32.and
                                                                                                                                                                                                                  i32.const 1
                                                                                                                                                                                                                  i32.ne
                                                                                                                                                                                                                  br_if 70 (;@33;)
                                                                                                                                                                                                                  get_local 0
                                                                                                                                                                                                                  i32.const 1
                                                                                                                                                                                                                  i32.store
                                                                                                                                                                                                                  get_local 0
                                                                                                                                                                                                                  get_local 3
                                                                                                                                                                                                                  i64.const 32
                                                                                                                                                                                                                  i64.shr_u
                                                                                                                                                                                                                  i64.store32 offset=4
                                                                                                                                                                                                                  br 102 (;@1;)
                                                                                                                                                                                                                end
                                                                                                                                                                                                                block  ;; label = @103
                                                                                                                                                                                                                  get_local 6
                                                                                                                                                                                                                  br_table 0 (;@103;) 18 (;@85;) 20 (;@83;) 19 (;@84;) 17 (;@86;) 21 (;@82;) 16 (;@87;) 22 (;@81;) 7 (;@96;) 7 (;@96;) 7 (;@96;) 23 (;@80;) 0 (;@103;)
                                                                                                                                                                                                                end
                                                                                                                                                                                                                get_local 0
                                                                                                                                                                                                                i32.const 0
                                                                                                                                                                                                                i32.store
                                                                                                                                                                                                                get_local 0
                                                                                                                                                                                                                i32.const 8
                                                                                                                                                                                                                i32.add
                                                                                                                                                                                                                i32.const 7
                                                                                                                                                                                                                i32.store16
                                                                                                                                                                                                                br 101 (;@1;)
                                                                                                                                                                                                              end
                                                                                                                                                                                                              block  ;; label = @102
                                                                                                                                                                                                                get_local 6
                                                                                                                                                                                                                br_table 0 (;@102;) 7 (;@95;) 8 (;@94;) 10 (;@92;) 6 (;@96;) 6 (;@96;) 6 (;@96;) 9 (;@93;) 0 (;@102;)
                                                                                                                                                                                                              end
                                                                                                                                                                                                              get_local 2
                                                                                                                                                                                                              i32.const 32
                                                                                                                                                                                                              i32.add
                                                                                                                                                                                                              get_local 1
                                                                                                                                                                                                              call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                                                              get_local 2
                                                                                                                                                                                                              get_local 2
                                                                                                                                                                                                              i64.load offset=32
                                                                                                                                                                                                              tee_local 3
                                                                                                                                                                                                              i64.store offset=16
                                                                                                                                                                                                              get_local 3
                                                                                                                                                                                                              i32.wrap/i64
                                                                                                                                                                                                              tee_local 5
                                                                                                                                                                                                              i32.const 255
                                                                                                                                                                                                              i32.and
                                                                                                                                                                                                              i32.const 1
                                                                                                                                                                                                              i32.ne
                                                                                                                                                                                                              br_if 43 (;@58;)
                                                                                                                                                                                                              get_local 0
                                                                                                                                                                                                              i32.const 1
                                                                                                                                                                                                              i32.store
                                                                                                                                                                                                              get_local 0
                                                                                                                                                                                                              get_local 3
                                                                                                                                                                                                              i64.const 32
                                                                                                                                                                                                              i64.shr_u
                                                                                                                                                                                                              i64.store32 offset=4
                                                                                                                                                                                                              br 100 (;@1;)
                                                                                                                                                                                                            end
                                                                                                                                                                                                            block  ;; label = @101
                                                                                                                                                                                                              get_local 6
                                                                                                                                                                                                              br_table 0 (;@101;) 10 (;@91;) 11 (;@90;) 13 (;@88;) 5 (;@96;) 5 (;@96;) 5 (;@96;) 12 (;@89;) 0 (;@101;)
                                                                                                                                                                                                            end
                                                                                                                                                                                                            get_local 2
                                                                                                                                                                                                            i32.const 32
                                                                                                                                                                                                            i32.add
                                                                                                                                                                                                            get_local 1
                                                                                                                                                                                                            call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                                                            get_local 2
                                                                                                                                                                                                            get_local 2
                                                                                                                                                                                                            i64.load offset=32
                                                                                                                                                                                                            tee_local 3
                                                                                                                                                                                                            i64.store offset=16
                                                                                                                                                                                                            get_local 3
                                                                                                                                                                                                            i32.wrap/i64
                                                                                                                                                                                                            tee_local 5
                                                                                                                                                                                                            i32.const 255
                                                                                                                                                                                                            i32.and
                                                                                                                                                                                                            i32.const 1
                                                                                                                                                                                                            i32.ne
                                                                                                                                                                                                            br_if 47 (;@53;)
                                                                                                                                                                                                            get_local 0
                                                                                                                                                                                                            i32.const 1
                                                                                                                                                                                                            i32.store
                                                                                                                                                                                                            get_local 0
                                                                                                                                                                                                            get_local 3
                                                                                                                                                                                                            i64.const 32
                                                                                                                                                                                                            i64.shr_u
                                                                                                                                                                                                            i64.store32 offset=4
                                                                                                                                                                                                            br 99 (;@1;)
                                                                                                                                                                                                          end
                                                                                                                                                                                                          block  ;; label = @100
                                                                                                                                                                                                            get_local 6
                                                                                                                                                                                                            br_table 0 (;@100;) 21 (;@79;) 22 (;@78;) 24 (;@76;) 4 (;@96;) 4 (;@96;) 4 (;@96;) 23 (;@77;) 0 (;@100;)
                                                                                                                                                                                                          end
                                                                                                                                                                                                          get_local 2
                                                                                                                                                                                                          i32.const 32
                                                                                                                                                                                                          i32.add
                                                                                                                                                                                                          get_local 1
                                                                                                                                                                                                          call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                                                          get_local 2
                                                                                                                                                                                                          get_local 2
                                                                                                                                                                                                          i64.load offset=32
                                                                                                                                                                                                          tee_local 3
                                                                                                                                                                                                          i64.store offset=16
                                                                                                                                                                                                          get_local 3
                                                                                                                                                                                                          i32.wrap/i64
                                                                                                                                                                                                          tee_local 5
                                                                                                                                                                                                          i32.const 255
                                                                                                                                                                                                          i32.and
                                                                                                                                                                                                          i32.const 1
                                                                                                                                                                                                          i32.ne
                                                                                                                                                                                                          br_if 53 (;@46;)
                                                                                                                                                                                                          get_local 0
                                                                                                                                                                                                          i32.const 1
                                                                                                                                                                                                          i32.store
                                                                                                                                                                                                          get_local 0
                                                                                                                                                                                                          get_local 3
                                                                                                                                                                                                          i64.const 32
                                                                                                                                                                                                          i64.shr_u
                                                                                                                                                                                                          i64.store32 offset=4
                                                                                                                                                                                                          br 98 (;@1;)
                                                                                                                                                                                                        end
                                                                                                                                                                                                        block  ;; label = @99
                                                                                                                                                                                                          get_local 6
                                                                                                                                                                                                          br_table 0 (;@99;) 24 (;@75;) 25 (;@74;) 27 (;@72;) 3 (;@96;) 3 (;@96;) 3 (;@96;) 26 (;@73;) 0 (;@99;)
                                                                                                                                                                                                        end
                                                                                                                                                                                                        get_local 2
                                                                                                                                                                                                        i32.const 32
                                                                                                                                                                                                        i32.add
                                                                                                                                                                                                        get_local 1
                                                                                                                                                                                                        call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                                                        get_local 2
                                                                                                                                                                                                        get_local 2
                                                                                                                                                                                                        i64.load offset=32
                                                                                                                                                                                                        tee_local 3
                                                                                                                                                                                                        i64.store offset=16
                                                                                                                                                                                                        get_local 3
                                                                                                                                                                                                        i32.wrap/i64
                                                                                                                                                                                                        tee_local 5
                                                                                                                                                                                                        i32.const 255
                                                                                                                                                                                                        i32.and
                                                                                                                                                                                                        i32.const 1
                                                                                                                                                                                                        i32.ne
                                                                                                                                                                                                        br_if 56 (;@42;)
                                                                                                                                                                                                        get_local 0
                                                                                                                                                                                                        i32.const 1
                                                                                                                                                                                                        i32.store
                                                                                                                                                                                                        get_local 0
                                                                                                                                                                                                        get_local 3
                                                                                                                                                                                                        i64.const 32
                                                                                                                                                                                                        i64.shr_u
                                                                                                                                                                                                        i64.store32 offset=4
                                                                                                                                                                                                        br 97 (;@1;)
                                                                                                                                                                                                      end
                                                                                                                                                                                                      block  ;; label = @98
                                                                                                                                                                                                        get_local 6
                                                                                                                                                                                                        br_table 0 (;@98;) 30 (;@68;) 27 (;@71;) 29 (;@69;) 0 (;@98;)
                                                                                                                                                                                                      end
                                                                                                                                                                                                      get_local 2
                                                                                                                                                                                                      i32.const 32
                                                                                                                                                                                                      i32.add
                                                                                                                                                                                                      get_local 1
                                                                                                                                                                                                      call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                                                      get_local 2
                                                                                                                                                                                                      get_local 2
                                                                                                                                                                                                      i64.load offset=32
                                                                                                                                                                                                      tee_local 3
                                                                                                                                                                                                      i64.store offset=16
                                                                                                                                                                                                      get_local 3
                                                                                                                                                                                                      i32.wrap/i64
                                                                                                                                                                                                      i32.const 255
                                                                                                                                                                                                      i32.and
                                                                                                                                                                                                      i32.const 1
                                                                                                                                                                                                      i32.ne
                                                                                                                                                                                                      br_if 60 (;@37;)
                                                                                                                                                                                                      get_local 0
                                                                                                                                                                                                      i32.const 1
                                                                                                                                                                                                      i32.store
                                                                                                                                                                                                      get_local 0
                                                                                                                                                                                                      get_local 3
                                                                                                                                                                                                      i64.const 32
                                                                                                                                                                                                      i64.shr_u
                                                                                                                                                                                                      i64.store32 offset=4
                                                                                                                                                                                                      br 96 (;@1;)
                                                                                                                                                                                                    end
                                                                                                                                                                                                    block  ;; label = @97
                                                                                                                                                                                                      get_local 6
                                                                                                                                                                                                      br_table 0 (;@97;) 34 (;@63;) 31 (;@66;) 33 (;@64;) 0 (;@97;)
                                                                                                                                                                                                    end
                                                                                                                                                                                                    get_local 2
                                                                                                                                                                                                    i32.const 32
                                                                                                                                                                                                    i32.add
                                                                                                                                                                                                    get_local 1
                                                                                                                                                                                                    call $<serde_cbor::de::Deserializer<R>>::parse_u8::h97aa89757059d3b5
                                                                                                                                                                                                    get_local 2
                                                                                                                                                                                                    get_local 2
                                                                                                                                                                                                    i64.load offset=32
                                                                                                                                                                                                    tee_local 3
                                                                                                                                                                                                    i64.store offset=16
                                                                                                                                                                                                    get_local 3
                                                                                                                                                                                                    i32.wrap/i64
                                                                                                                                                                                                    i32.const 255
                                                                                                                                                                                                    i32.and
                                                                                                                                                                                                    i32.const 1
                                                                                                                                                                                                    i32.ne
                                                                                                                                                                                                    br_if 66 (;@30;)
                                                                                                                                                                                                    get_local 0
                                                                                                                                                                                                    i32.const 1
                                                                                                                                                                                                    i32.store
                                                                                                                                                                                                    get_local 0
                                                                                                                                                                                                    get_local 3
                                                                                                                                                                                                    i64.const 32
                                                                                                                                                                                                    i64.shr_u
                                                                                                                                                                                                    i64.store32 offset=4
                                                                                                                                                                                                    br 95 (;@1;)
                                                                                                                                                                                                  end
                                                                                                                                                                                                  get_local 4
                                                                                                                                                                                                  i32.const 252
                                                                                                                                                                                                  i32.and
                                                                                                                                                                                                  tee_local 5
                                                                                                                                                                                                  i32.const 28
                                                                                                                                                                                                  i32.ne
                                                                                                                                                                                                  br_if 33 (;@62;)
                                                                                                                                                                                                  get_local 2
                                                                                                                                                                                                  i32.const 8
                                                                                                                                                                                                  i32.store offset=32
                                                                                                                                                                                                  get_local 1
                                                                                                                                                                                                  get_local 2
                                                                                                                                                                                                  i32.const 32
                                                                                                                                                                                                  i32.add
                                                                                                                                                                                                  call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                                                                                                                                                                  set_local 1
                                                                                                                                                                                                  get_local 0
                                                                                                                                                                                                  i32.const 1
                                                                                                                                                                                                  i32.store
                                                                                                                                                                                                  get_local 0
                                                                                                                                                                                                  get_local 1
                                                                                                                                                                                                  i32.store offset=4
                                                                                                                                                                                                  br 94 (;@1;)
                                                                                                                                                                                                end
                                                                                                                                                                                                get_local 2
                                                                                                                                                                                                i32.const 32
                                                                                                                                                                                                i32.add
                                                                                                                                                                                                get_local 1
                                                                                                                                                                                                call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                                                                                                                get_local 2
                                                                                                                                                                                                get_local 2
                                                                                                                                                                                                i64.load offset=32
                                                                                                                                                                                                tee_local 3
                                                                                                                                                                                                i64.store offset=16
                                                                                                                                                                                                get_local 3
                                                                                                                                                                                                i32.wrap/i64
                                                                                                                                                                                                tee_local 5
                                                                                                                                                                                                i32.const 65535
                                                                                                                                                                                                i32.and
                                                                                                                                                                                                i32.const 1
                                                                                                                                                                                                i32.ne
                                                                                                                                                                                                br_if 33 (;@61;)
                                                                                                                                                                                                get_local 0
                                                                                                                                                                                                i32.const 1
                                                                                                                                                                                                i32.store
                                                                                                                                                                                                get_local 0
                                                                                                                                                                                                get_local 3
                                                                                                                                                                                                i64.const 32
                                                                                                                                                                                                i64.shr_u
                                                                                                                                                                                                i64.store32 offset=4
                                                                                                                                                                                                br 93 (;@1;)
                                                                                                                                                                                              end
                                                                                                                                                                                              get_local 2
                                                                                                                                                                                              i32.const 32
                                                                                                                                                                                              i32.add
                                                                                                                                                                                              get_local 1
                                                                                                                                                                                              call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                                                                                                              get_local 2
                                                                                                                                                                                              get_local 2
                                                                                                                                                                                              i64.load offset=32
                                                                                                                                                                                              tee_local 3
                                                                                                                                                                                              i64.store offset=16
                                                                                                                                                                                              get_local 3
                                                                                                                                                                                              i64.const 32
                                                                                                                                                                                              i64.shr_u
                                                                                                                                                                                              i32.wrap/i64
                                                                                                                                                                                              set_local 5
                                                                                                                                                                                              get_local 3
                                                                                                                                                                                              i32.wrap/i64
                                                                                                                                                                                              i32.const 1
                                                                                                                                                                                              i32.ne
                                                                                                                                                                                              br_if 33 (;@60;)
                                                                                                                                                                                              get_local 0
                                                                                                                                                                                              i32.const 1
                                                                                                                                                                                              i32.store
                                                                                                                                                                                              get_local 0
                                                                                                                                                                                              get_local 5
                                                                                                                                                                                              i32.store offset=4
                                                                                                                                                                                              br 92 (;@1;)
                                                                                                                                                                                            end
                                                                                                                                                                                            get_local 2
                                                                                                                                                                                            i32.const 32
                                                                                                                                                                                            i32.add
                                                                                                                                                                                            get_local 1
                                                                                                                                                                                            call $<serde_cbor::de::Deserializer<R>>::parse_indefinite_bytes::hb3989b60cb33ff75
                                                                                                                                                                                            get_local 2
                                                                                                                                                                                            i32.load offset=32
                                                                                                                                                                                            i32.const 1
                                                                                                                                                                                            i32.ne
                                                                                                                                                                                            br_if 33 (;@59;)
                                                                                                                                                                                            get_local 0
                                                                                                                                                                                            get_local 2
                                                                                                                                                                                            i32.load offset=36
                                                                                                                                                                                            i32.store offset=4
                                                                                                                                                                                            get_local 0
                                                                                                                                                                                            i32.const 1
                                                                                                                                                                                            i32.store
                                                                                                                                                                                            br 91 (;@1;)
                                                                                                                                                                                          end
                                                                                                                                                                                          get_local 2
                                                                                                                                                                                          i32.const 32
                                                                                                                                                                                          i32.add
                                                                                                                                                                                          get_local 1
                                                                                                                                                                                          call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                                                                                                          get_local 2
                                                                                                                                                                                          i32.load offset=32
                                                                                                                                                                                          i32.const 1
                                                                                                                                                                                          i32.ne
                                                                                                                                                                                          br_if 34 (;@57;)
                                                                                                                                                                                          get_local 0
                                                                                                                                                                                          get_local 2
                                                                                                                                                                                          i32.load offset=36
                                                                                                                                                                                          i32.store offset=4
                                                                                                                                                                                          get_local 0
                                                                                                                                                                                          i32.const 1
                                                                                                                                                                                          i32.store
                                                                                                                                                                                          br 90 (;@1;)
                                                                                                                                                                                        end
                                                                                                                                                                                        get_local 2
                                                                                                                                                                                        i32.const 32
                                                                                                                                                                                        i32.add
                                                                                                                                                                                        get_local 1
                                                                                                                                                                                        call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                                                                                                        get_local 2
                                                                                                                                                                                        get_local 2
                                                                                                                                                                                        i64.load offset=32
                                                                                                                                                                                        tee_local 3
                                                                                                                                                                                        i64.store offset=16
                                                                                                                                                                                        get_local 3
                                                                                                                                                                                        i32.wrap/i64
                                                                                                                                                                                        tee_local 5
                                                                                                                                                                                        i32.const 65535
                                                                                                                                                                                        i32.and
                                                                                                                                                                                        i32.const 1
                                                                                                                                                                                        i32.ne
                                                                                                                                                                                        br_if 34 (;@56;)
                                                                                                                                                                                        get_local 0
                                                                                                                                                                                        i32.const 1
                                                                                                                                                                                        i32.store
                                                                                                                                                                                        get_local 0
                                                                                                                                                                                        get_local 3
                                                                                                                                                                                        i64.const 32
                                                                                                                                                                                        i64.shr_u
                                                                                                                                                                                        i64.store32 offset=4
                                                                                                                                                                                        br 89 (;@1;)
                                                                                                                                                                                      end
                                                                                                                                                                                      get_local 2
                                                                                                                                                                                      i32.const 32
                                                                                                                                                                                      i32.add
                                                                                                                                                                                      get_local 1
                                                                                                                                                                                      call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                                                                                                      get_local 2
                                                                                                                                                                                      get_local 2
                                                                                                                                                                                      i64.load offset=32
                                                                                                                                                                                      tee_local 3
                                                                                                                                                                                      i64.store offset=16
                                                                                                                                                                                      get_local 3
                                                                                                                                                                                      i64.const 32
                                                                                                                                                                                      i64.shr_u
                                                                                                                                                                                      i32.wrap/i64
                                                                                                                                                                                      set_local 5
                                                                                                                                                                                      get_local 3
                                                                                                                                                                                      i32.wrap/i64
                                                                                                                                                                                      i32.const 1
                                                                                                                                                                                      i32.ne
                                                                                                                                                                                      br_if 34 (;@55;)
                                                                                                                                                                                      get_local 0
                                                                                                                                                                                      i32.const 1
                                                                                                                                                                                      i32.store
                                                                                                                                                                                      get_local 0
                                                                                                                                                                                      get_local 5
                                                                                                                                                                                      i32.store offset=4
                                                                                                                                                                                      br 88 (;@1;)
                                                                                                                                                                                    end
                                                                                                                                                                                    get_local 2
                                                                                                                                                                                    i32.const 32
                                                                                                                                                                                    i32.add
                                                                                                                                                                                    get_local 1
                                                                                                                                                                                    call $<serde_cbor::de::Deserializer<R>>::parse_indefinite_str::h1f671b35f261b74d
                                                                                                                                                                                    get_local 2
                                                                                                                                                                                    i32.load offset=32
                                                                                                                                                                                    i32.const 1
                                                                                                                                                                                    i32.ne
                                                                                                                                                                                    br_if 34 (;@54;)
                                                                                                                                                                                    get_local 0
                                                                                                                                                                                    get_local 2
                                                                                                                                                                                    i32.load offset=36
                                                                                                                                                                                    i32.store offset=4
                                                                                                                                                                                    get_local 0
                                                                                                                                                                                    i32.const 1
                                                                                                                                                                                    i32.store
                                                                                                                                                                                    br 87 (;@1;)
                                                                                                                                                                                  end
                                                                                                                                                                                  get_local 2
                                                                                                                                                                                  i32.const 32
                                                                                                                                                                                  i32.add
                                                                                                                                                                                  get_local 1
                                                                                                                                                                                  call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                                                                                                  get_local 2
                                                                                                                                                                                  i32.load offset=32
                                                                                                                                                                                  i32.const 1
                                                                                                                                                                                  i32.ne
                                                                                                                                                                                  br_if 35 (;@52;)
                                                                                                                                                                                  get_local 0
                                                                                                                                                                                  get_local 2
                                                                                                                                                                                  i32.load offset=36
                                                                                                                                                                                  i32.store offset=4
                                                                                                                                                                                  get_local 0
                                                                                                                                                                                  i32.const 1
                                                                                                                                                                                  i32.store
                                                                                                                                                                                  br 86 (;@1;)
                                                                                                                                                                                end
                                                                                                                                                                                get_local 2
                                                                                                                                                                                i32.const 32
                                                                                                                                                                                i32.add
                                                                                                                                                                                get_local 1
                                                                                                                                                                                call $<serde_cbor::de::Deserializer<R>>::parse_f32::h90c725da6b4411ef
                                                                                                                                                                                get_local 2
                                                                                                                                                                                get_local 2
                                                                                                                                                                                i64.load offset=32
                                                                                                                                                                                tee_local 3
                                                                                                                                                                                i64.store offset=16
                                                                                                                                                                                get_local 3
                                                                                                                                                                                i64.const 32
                                                                                                                                                                                i64.shr_u
                                                                                                                                                                                i32.wrap/i64
                                                                                                                                                                                set_local 1
                                                                                                                                                                                get_local 3
                                                                                                                                                                                i32.wrap/i64
                                                                                                                                                                                i32.const 1
                                                                                                                                                                                i32.ne
                                                                                                                                                                                br_if 35 (;@51;)
                                                                                                                                                                                get_local 0
                                                                                                                                                                                i32.const 1
                                                                                                                                                                                i32.store
                                                                                                                                                                                get_local 0
                                                                                                                                                                                get_local 1
                                                                                                                                                                                i32.store offset=4
                                                                                                                                                                                br 85 (;@1;)
                                                                                                                                                                              end
                                                                                                                                                                              get_local 2
                                                                                                                                                                              i32.const 8
                                                                                                                                                                              i32.store offset=32
                                                                                                                                                                              get_local 1
                                                                                                                                                                              get_local 2
                                                                                                                                                                              i32.const 32
                                                                                                                                                                              i32.add
                                                                                                                                                                              call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                                                                                                                                              set_local 1
                                                                                                                                                                              get_local 0
                                                                                                                                                                              i32.const 1
                                                                                                                                                                              i32.store
                                                                                                                                                                              get_local 0
                                                                                                                                                                              get_local 1
                                                                                                                                                                              i32.store offset=4
                                                                                                                                                                              br 84 (;@1;)
                                                                                                                                                                            end
                                                                                                                                                                            get_local 0
                                                                                                                                                                            i32.const 0
                                                                                                                                                                            i32.store
                                                                                                                                                                            get_local 0
                                                                                                                                                                            i32.const 8
                                                                                                                                                                            i32.add
                                                                                                                                                                            i32.const 263
                                                                                                                                                                            i32.store16
                                                                                                                                                                            br 83 (;@1;)
                                                                                                                                                                          end
                                                                                                                                                                          get_local 0
                                                                                                                                                                          i32.const 0
                                                                                                                                                                          i32.store
                                                                                                                                                                          get_local 0
                                                                                                                                                                          i32.const 8
                                                                                                                                                                          i32.add
                                                                                                                                                                          i32.const 8
                                                                                                                                                                          i32.store8
                                                                                                                                                                          br 82 (;@1;)
                                                                                                                                                                        end
                                                                                                                                                                        get_local 0
                                                                                                                                                                        i32.const 0
                                                                                                                                                                        i32.store
                                                                                                                                                                        get_local 0
                                                                                                                                                                        i32.const 8
                                                                                                                                                                        i32.add
                                                                                                                                                                        i32.const 8
                                                                                                                                                                        i32.store8
                                                                                                                                                                        br 81 (;@1;)
                                                                                                                                                                      end
                                                                                                                                                                      get_local 2
                                                                                                                                                                      i32.const 32
                                                                                                                                                                      i32.add
                                                                                                                                                                      get_local 1
                                                                                                                                                                      call $<serde_cbor::de::Deserializer<R>>::parse_f16::he33c0046e54ea908
                                                                                                                                                                      get_local 2
                                                                                                                                                                      get_local 2
                                                                                                                                                                      i64.load offset=32
                                                                                                                                                                      tee_local 3
                                                                                                                                                                      i64.store offset=16
                                                                                                                                                                      get_local 3
                                                                                                                                                                      i64.const 32
                                                                                                                                                                      i64.shr_u
                                                                                                                                                                      i32.wrap/i64
                                                                                                                                                                      set_local 1
                                                                                                                                                                      get_local 3
                                                                                                                                                                      i32.wrap/i64
                                                                                                                                                                      i32.const 1
                                                                                                                                                                      i32.ne
                                                                                                                                                                      br_if 31 (;@50;)
                                                                                                                                                                      get_local 0
                                                                                                                                                                      i32.const 1
                                                                                                                                                                      i32.store
                                                                                                                                                                      get_local 0
                                                                                                                                                                      get_local 1
                                                                                                                                                                      i32.store offset=4
                                                                                                                                                                      br 80 (;@1;)
                                                                                                                                                                    end
                                                                                                                                                                    get_local 2
                                                                                                                                                                    i32.const 32
                                                                                                                                                                    i32.add
                                                                                                                                                                    get_local 1
                                                                                                                                                                    call $<serde_cbor::de::Deserializer<R>>::parse_f64::h1400f5a66ceed2f3
                                                                                                                                                                    get_local 2
                                                                                                                                                                    i32.load offset=32
                                                                                                                                                                    i32.const 1
                                                                                                                                                                    i32.ne
                                                                                                                                                                    br_if 31 (;@49;)
                                                                                                                                                                    get_local 0
                                                                                                                                                                    get_local 2
                                                                                                                                                                    i32.load offset=36
                                                                                                                                                                    i32.store offset=4
                                                                                                                                                                    get_local 0
                                                                                                                                                                    i32.const 1
                                                                                                                                                                    i32.store
                                                                                                                                                                    br 79 (;@1;)
                                                                                                                                                                  end
                                                                                                                                                                  get_local 2
                                                                                                                                                                  i32.const 9
                                                                                                                                                                  i32.store offset=32
                                                                                                                                                                  get_local 1
                                                                                                                                                                  get_local 2
                                                                                                                                                                  i32.const 32
                                                                                                                                                                  i32.add
                                                                                                                                                                  call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                                                                                                                                  set_local 1
                                                                                                                                                                  get_local 0
                                                                                                                                                                  i32.const 1
                                                                                                                                                                  i32.store
                                                                                                                                                                  get_local 0
                                                                                                                                                                  get_local 1
                                                                                                                                                                  i32.store offset=4
                                                                                                                                                                  br 78 (;@1;)
                                                                                                                                                                end
                                                                                                                                                                get_local 2
                                                                                                                                                                i32.const 32
                                                                                                                                                                i32.add
                                                                                                                                                                get_local 1
                                                                                                                                                                call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                                                                                get_local 2
                                                                                                                                                                get_local 2
                                                                                                                                                                i64.load offset=32
                                                                                                                                                                tee_local 3
                                                                                                                                                                i64.store offset=16
                                                                                                                                                                get_local 3
                                                                                                                                                                i32.wrap/i64
                                                                                                                                                                tee_local 5
                                                                                                                                                                i32.const 65535
                                                                                                                                                                i32.and
                                                                                                                                                                i32.const 1
                                                                                                                                                                i32.ne
                                                                                                                                                                br_if 30 (;@48;)
                                                                                                                                                                get_local 0
                                                                                                                                                                i32.const 1
                                                                                                                                                                i32.store
                                                                                                                                                                get_local 0
                                                                                                                                                                get_local 3
                                                                                                                                                                i64.const 32
                                                                                                                                                                i64.shr_u
                                                                                                                                                                i64.store32 offset=4
                                                                                                                                                                br 77 (;@1;)
                                                                                                                                                              end
                                                                                                                                                              get_local 2
                                                                                                                                                              i32.const 32
                                                                                                                                                              i32.add
                                                                                                                                                              get_local 1
                                                                                                                                                              call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                                                                              get_local 2
                                                                                                                                                              get_local 2
                                                                                                                                                              i64.load offset=32
                                                                                                                                                              tee_local 3
                                                                                                                                                              i64.store offset=16
                                                                                                                                                              get_local 3
                                                                                                                                                              i64.const 32
                                                                                                                                                              i64.shr_u
                                                                                                                                                              i32.wrap/i64
                                                                                                                                                              set_local 5
                                                                                                                                                              get_local 3
                                                                                                                                                              i32.wrap/i64
                                                                                                                                                              i32.const 1
                                                                                                                                                              i32.ne
                                                                                                                                                              br_if 30 (;@47;)
                                                                                                                                                              get_local 0
                                                                                                                                                              i32.const 1
                                                                                                                                                              i32.store
                                                                                                                                                              get_local 0
                                                                                                                                                              get_local 5
                                                                                                                                                              i32.store offset=4
                                                                                                                                                              br 76 (;@1;)
                                                                                                                                                            end
                                                                                                                                                            get_local 1
                                                                                                                                                            get_local 1
                                                                                                                                                            i32.load8_u offset=24
                                                                                                                                                            i32.const -1
                                                                                                                                                            i32.add
                                                                                                                                                            tee_local 5
                                                                                                                                                            i32.store8 offset=24
                                                                                                                                                            get_local 5
                                                                                                                                                            i32.const 255
                                                                                                                                                            i32.and
                                                                                                                                                            i32.eqz
                                                                                                                                                            br_if 48 (;@28;)
                                                                                                                                                            get_local 2
                                                                                                                                                            i32.const 32
                                                                                                                                                            i32.add
                                                                                                                                                            get_local 1
                                                                                                                                                            call $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_seq::h5b1349a1caec1a84
                                                                                                                                                            i32.const 1
                                                                                                                                                            set_local 5
                                                                                                                                                            get_local 2
                                                                                                                                                            i32.load offset=32
                                                                                                                                                            i32.const 1
                                                                                                                                                            i32.ne
                                                                                                                                                            br_if 51 (;@25;)
                                                                                                                                                            get_local 2
                                                                                                                                                            i32.load offset=36
                                                                                                                                                            set_local 4
                                                                                                                                                            br 68 (;@8;)
                                                                                                                                                          end
                                                                                                                                                          get_local 2
                                                                                                                                                          i32.const 32
                                                                                                                                                          i32.add
                                                                                                                                                          get_local 1
                                                                                                                                                          call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                                                                          get_local 2
                                                                                                                                                          i32.load offset=32
                                                                                                                                                          i32.const 1
                                                                                                                                                          i32.ne
                                                                                                                                                          br_if 30 (;@45;)
                                                                                                                                                          get_local 0
                                                                                                                                                          get_local 2
                                                                                                                                                          i32.load offset=36
                                                                                                                                                          i32.store offset=4
                                                                                                                                                          get_local 0
                                                                                                                                                          i32.const 1
                                                                                                                                                          i32.store
                                                                                                                                                          br 74 (;@1;)
                                                                                                                                                        end
                                                                                                                                                        get_local 2
                                                                                                                                                        i32.const 32
                                                                                                                                                        i32.add
                                                                                                                                                        get_local 1
                                                                                                                                                        call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                                                                        get_local 2
                                                                                                                                                        get_local 2
                                                                                                                                                        i64.load offset=32
                                                                                                                                                        tee_local 3
                                                                                                                                                        i64.store offset=16
                                                                                                                                                        get_local 3
                                                                                                                                                        i32.wrap/i64
                                                                                                                                                        tee_local 5
                                                                                                                                                        i32.const 65535
                                                                                                                                                        i32.and
                                                                                                                                                        i32.const 1
                                                                                                                                                        i32.ne
                                                                                                                                                        br_if 30 (;@44;)
                                                                                                                                                        get_local 0
                                                                                                                                                        i32.const 1
                                                                                                                                                        i32.store
                                                                                                                                                        get_local 0
                                                                                                                                                        get_local 3
                                                                                                                                                        i64.const 32
                                                                                                                                                        i64.shr_u
                                                                                                                                                        i64.store32 offset=4
                                                                                                                                                        br 73 (;@1;)
                                                                                                                                                      end
                                                                                                                                                      get_local 2
                                                                                                                                                      i32.const 32
                                                                                                                                                      i32.add
                                                                                                                                                      get_local 1
                                                                                                                                                      call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                                                                      get_local 2
                                                                                                                                                      get_local 2
                                                                                                                                                      i64.load offset=32
                                                                                                                                                      tee_local 3
                                                                                                                                                      i64.store offset=16
                                                                                                                                                      get_local 3
                                                                                                                                                      i64.const 32
                                                                                                                                                      i64.shr_u
                                                                                                                                                      i32.wrap/i64
                                                                                                                                                      set_local 5
                                                                                                                                                      get_local 3
                                                                                                                                                      i32.wrap/i64
                                                                                                                                                      i32.const 1
                                                                                                                                                      i32.ne
                                                                                                                                                      br_if 30 (;@43;)
                                                                                                                                                      get_local 0
                                                                                                                                                      i32.const 1
                                                                                                                                                      i32.store
                                                                                                                                                      get_local 0
                                                                                                                                                      get_local 5
                                                                                                                                                      i32.store offset=4
                                                                                                                                                      br 72 (;@1;)
                                                                                                                                                    end
                                                                                                                                                    get_local 1
                                                                                                                                                    get_local 1
                                                                                                                                                    i32.load8_u offset=24
                                                                                                                                                    i32.const -1
                                                                                                                                                    i32.add
                                                                                                                                                    tee_local 5
                                                                                                                                                    i32.store8 offset=24
                                                                                                                                                    get_local 5
                                                                                                                                                    i32.const 255
                                                                                                                                                    i32.and
                                                                                                                                                    i32.eqz
                                                                                                                                                    br_if 45 (;@27;)
                                                                                                                                                    get_local 2
                                                                                                                                                    i32.const 32
                                                                                                                                                    i32.add
                                                                                                                                                    get_local 1
                                                                                                                                                    call $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_map::hf79da5ac2f849009
                                                                                                                                                    i32.const 1
                                                                                                                                                    set_local 5
                                                                                                                                                    get_local 2
                                                                                                                                                    i32.load offset=32
                                                                                                                                                    i32.const 1
                                                                                                                                                    i32.ne
                                                                                                                                                    br_if 48 (;@24;)
                                                                                                                                                    get_local 2
                                                                                                                                                    i32.load offset=36
                                                                                                                                                    set_local 4
                                                                                                                                                    br 68 (;@4;)
                                                                                                                                                  end
                                                                                                                                                  get_local 2
                                                                                                                                                  i32.const 32
                                                                                                                                                  i32.add
                                                                                                                                                  get_local 1
                                                                                                                                                  call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                                                                  get_local 2
                                                                                                                                                  i32.load offset=32
                                                                                                                                                  i32.const 1
                                                                                                                                                  i32.ne
                                                                                                                                                  br_if 30 (;@41;)
                                                                                                                                                  get_local 0
                                                                                                                                                  get_local 2
                                                                                                                                                  i32.load offset=36
                                                                                                                                                  i32.store offset=4
                                                                                                                                                  get_local 0
                                                                                                                                                  i32.const 1
                                                                                                                                                  i32.store
                                                                                                                                                  br 70 (;@1;)
                                                                                                                                                end
                                                                                                                                                get_local 2
                                                                                                                                                i32.const 32
                                                                                                                                                i32.add
                                                                                                                                                get_local 1
                                                                                                                                                call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                                                                get_local 2
                                                                                                                                                get_local 2
                                                                                                                                                i64.load offset=32
                                                                                                                                                tee_local 3
                                                                                                                                                i64.store offset=16
                                                                                                                                                get_local 3
                                                                                                                                                i64.const 32
                                                                                                                                                i64.shr_u
                                                                                                                                                set_local 7
                                                                                                                                                get_local 3
                                                                                                                                                i32.wrap/i64
                                                                                                                                                i32.const 1
                                                                                                                                                i32.ne
                                                                                                                                                br_if 30 (;@40;)
                                                                                                                                                get_local 0
                                                                                                                                                i32.const 1
                                                                                                                                                i32.store
                                                                                                                                                get_local 0
                                                                                                                                                get_local 7
                                                                                                                                                i64.store32 offset=4
                                                                                                                                                br 69 (;@1;)
                                                                                                                                              end
                                                                                                                                              get_local 2
                                                                                                                                              i32.const 32
                                                                                                                                              i32.add
                                                                                                                                              get_local 1
                                                                                                                                              call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                                                              get_local 2
                                                                                                                                              get_local 2
                                                                                                                                              i64.load offset=32
                                                                                                                                              tee_local 3
                                                                                                                                              i64.store offset=16
                                                                                                                                              get_local 3
                                                                                                                                              i32.wrap/i64
                                                                                                                                              i32.const 1
                                                                                                                                              i32.ne
                                                                                                                                              br_if 30 (;@39;)
                                                                                                                                              get_local 0
                                                                                                                                              i32.const 1
                                                                                                                                              i32.store
                                                                                                                                              get_local 0
                                                                                                                                              get_local 3
                                                                                                                                              i64.const 32
                                                                                                                                              i64.shr_u
                                                                                                                                              i64.store32 offset=4
                                                                                                                                              br 68 (;@1;)
                                                                                                                                            end
                                                                                                                                            get_local 2
                                                                                                                                            i32.const 32
                                                                                                                                            i32.add
                                                                                                                                            get_local 1
                                                                                                                                            call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                                                            get_local 2
                                                                                                                                            i32.load offset=32
                                                                                                                                            i32.const 1
                                                                                                                                            i32.ne
                                                                                                                                            br_if 30 (;@38;)
                                                                                                                                            get_local 0
                                                                                                                                            get_local 2
                                                                                                                                            i32.load offset=36
                                                                                                                                            i32.store offset=4
                                                                                                                                            get_local 0
                                                                                                                                            i32.const 1
                                                                                                                                            i32.store
                                                                                                                                            br 67 (;@1;)
                                                                                                                                          end
                                                                                                                                          get_local 2
                                                                                                                                          i32.const 32
                                                                                                                                          i32.add
                                                                                                                                          get_local 1
                                                                                                                                          call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                                                          get_local 2
                                                                                                                                          get_local 2
                                                                                                                                          i64.load offset=32
                                                                                                                                          tee_local 3
                                                                                                                                          i64.store offset=16
                                                                                                                                          get_local 3
                                                                                                                                          i32.wrap/i64
                                                                                                                                          i32.const 65535
                                                                                                                                          i32.and
                                                                                                                                          i32.const 1
                                                                                                                                          i32.ne
                                                                                                                                          br_if 31 (;@36;)
                                                                                                                                          get_local 0
                                                                                                                                          i32.const 1
                                                                                                                                          i32.store
                                                                                                                                          get_local 0
                                                                                                                                          get_local 3
                                                                                                                                          i64.const 32
                                                                                                                                          i64.shr_u
                                                                                                                                          i64.store32 offset=4
                                                                                                                                          br 66 (;@1;)
                                                                                                                                        end
                                                                                                                                        get_local 2
                                                                                                                                        i32.const 32
                                                                                                                                        i32.add
                                                                                                                                        get_local 1
                                                                                                                                        call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                                                        get_local 2
                                                                                                                                        i32.load offset=32
                                                                                                                                        i32.const 1
                                                                                                                                        i32.ne
                                                                                                                                        br_if 31 (;@35;)
                                                                                                                                        get_local 0
                                                                                                                                        get_local 2
                                                                                                                                        i32.load offset=36
                                                                                                                                        i32.store offset=4
                                                                                                                                        get_local 0
                                                                                                                                        i32.const 1
                                                                                                                                        i32.store
                                                                                                                                        br 65 (;@1;)
                                                                                                                                      end
                                                                                                                                      get_local 2
                                                                                                                                      i32.const 32
                                                                                                                                      i32.add
                                                                                                                                      get_local 1
                                                                                                                                      call $<serde_cbor::de::Deserializer<R>>::parse_u32::hb66c78274823f994
                                                                                                                                      get_local 2
                                                                                                                                      get_local 2
                                                                                                                                      i64.load offset=32
                                                                                                                                      tee_local 3
                                                                                                                                      i64.store offset=16
                                                                                                                                      get_local 3
                                                                                                                                      i64.const 32
                                                                                                                                      i64.shr_u
                                                                                                                                      set_local 7
                                                                                                                                      get_local 3
                                                                                                                                      i32.wrap/i64
                                                                                                                                      i32.const 1
                                                                                                                                      i32.ne
                                                                                                                                      br_if 31 (;@34;)
                                                                                                                                      get_local 0
                                                                                                                                      i32.const 1
                                                                                                                                      i32.store
                                                                                                                                      get_local 0
                                                                                                                                      get_local 7
                                                                                                                                      i64.store32 offset=4
                                                                                                                                      br 64 (;@1;)
                                                                                                                                    end
                                                                                                                                    get_local 2
                                                                                                                                    i32.const 32
                                                                                                                                    i32.add
                                                                                                                                    get_local 1
                                                                                                                                    call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                                                    get_local 2
                                                                                                                                    get_local 2
                                                                                                                                    i64.load offset=32
                                                                                                                                    tee_local 3
                                                                                                                                    i64.store offset=16
                                                                                                                                    get_local 3
                                                                                                                                    i32.wrap/i64
                                                                                                                                    i32.const 65535
                                                                                                                                    i32.and
                                                                                                                                    i32.const 1
                                                                                                                                    i32.ne
                                                                                                                                    br_if 32 (;@32;)
                                                                                                                                    get_local 0
                                                                                                                                    i32.const 1
                                                                                                                                    i32.store
                                                                                                                                    get_local 0
                                                                                                                                    get_local 3
                                                                                                                                    i64.const 32
                                                                                                                                    i64.shr_u
                                                                                                                                    i64.store32 offset=4
                                                                                                                                    br 63 (;@1;)
                                                                                                                                  end
                                                                                                                                  get_local 2
                                                                                                                                  i32.const 32
                                                                                                                                  i32.add
                                                                                                                                  get_local 1
                                                                                                                                  call $<serde_cbor::de::Deserializer<R>>::parse_u64::hd254a10a786856e6
                                                                                                                                  get_local 2
                                                                                                                                  i32.load offset=32
                                                                                                                                  i32.const 1
                                                                                                                                  i32.ne
                                                                                                                                  br_if 32 (;@31;)
                                                                                                                                  get_local 0
                                                                                                                                  get_local 2
                                                                                                                                  i32.load offset=36
                                                                                                                                  i32.store offset=4
                                                                                                                                  get_local 0
                                                                                                                                  i32.const 1
                                                                                                                                  i32.store
                                                                                                                                  br 62 (;@1;)
                                                                                                                                end
                                                                                                                                get_local 2
                                                                                                                                i32.const 32
                                                                                                                                i32.add
                                                                                                                                get_local 1
                                                                                                                                call $<serde_cbor::de::Deserializer<R>>::parse_u16::h740b4991cdef146d
                                                                                                                                get_local 2
                                                                                                                                get_local 2
                                                                                                                                i64.load offset=32
                                                                                                                                tee_local 3
                                                                                                                                i64.store offset=16
                                                                                                                                get_local 3
                                                                                                                                i32.wrap/i64
                                                                                                                                i32.const 65535
                                                                                                                                i32.and
                                                                                                                                i32.const 1
                                                                                                                                i32.ne
                                                                                                                                br_if 33 (;@29;)
                                                                                                                                get_local 0
                                                                                                                                i32.const 1
                                                                                                                                i32.store
                                                                                                                                get_local 0
                                                                                                                                get_local 3
                                                                                                                                i64.const 32
                                                                                                                                i64.shr_u
                                                                                                                                i64.store32 offset=4
                                                                                                                                br 61 (;@1;)
                                                                                                                              end
                                                                                                                              get_local 4
                                                                                                                              i32.const -32
                                                                                                                              i32.add
                                                                                                                              i32.const 255
                                                                                                                              i32.and
                                                                                                                              i32.const 24
                                                                                                                              i32.ge_u
                                                                                                                              br_if 35 (;@26;)
                                                                                                                              get_local 0
                                                                                                                              i32.const 0
                                                                                                                              i32.store
                                                                                                                              get_local 0
                                                                                                                              i32.const 8
                                                                                                                              i32.add
                                                                                                                              i32.const 1
                                                                                                                              i32.store8
                                                                                                                              get_local 0
                                                                                                                              i32.const 16
                                                                                                                              i32.add
                                                                                                                              i64.const 2233785415175766016
                                                                                                                              get_local 3
                                                                                                                              i64.const 56
                                                                                                                              i64.shl
                                                                                                                              i64.sub
                                                                                                                              i64.const 56
                                                                                                                              i64.shr_s
                                                                                                                              i64.store
                                                                                                                              br 60 (;@1;)
                                                                                                                            end
                                                                                                                            get_local 2
                                                                                                                            i32.const 16
                                                                                                                            i32.add
                                                                                                                            call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                                                                                                            get_local 0
                                                                                                                            get_local 1
                                                                                                                            get_local 5
                                                                                                                            i32.const 16
                                                                                                                            i32.shr_u
                                                                                                                            call $<serde_cbor::de::Deserializer<R>>::parse_bytes::h9257a7eed0482db0
                                                                                                                            br 59 (;@1;)
                                                                                                                          end
                                                                                                                          get_local 2
                                                                                                                          i32.const 16
                                                                                                                          i32.add
                                                                                                                          call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                                                                                                          get_local 0
                                                                                                                          get_local 1
                                                                                                                          get_local 5
                                                                                                                          call $<serde_cbor::de::Deserializer<R>>::parse_bytes::h9257a7eed0482db0
                                                                                                                          br 58 (;@1;)
                                                                                                                        end
                                                                                                                        get_local 2
                                                                                                                        i32.const 40
                                                                                                                        i32.add
                                                                                                                        i32.load
                                                                                                                        set_local 1
                                                                                                                        get_local 2
                                                                                                                        i32.load offset=36
                                                                                                                        set_local 5
                                                                                                                        get_local 2
                                                                                                                        i32.const 32
                                                                                                                        i32.add
                                                                                                                        call $core::ptr::real_drop_in_place::hb70ab21c6ffbb524
                                                                                                                        get_local 0
                                                                                                                        get_local 5
                                                                                                                        get_local 1
                                                                                                                        call $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_bytes::ha63b49f742f3cc98
                                                                                                                        br 57 (;@1;)
                                                                                                                      end
                                                                                                                      get_local 2
                                                                                                                      i32.const 16
                                                                                                                      i32.add
                                                                                                                      call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                                                                                                      get_local 0
                                                                                                                      get_local 1
                                                                                                                      get_local 5
                                                                                                                      i32.const 8
                                                                                                                      i32.shr_u
                                                                                                                      i32.const 255
                                                                                                                      i32.and
                                                                                                                      call $<serde_cbor::de::Deserializer<R>>::parse_bytes::h9257a7eed0482db0
                                                                                                                      br 56 (;@1;)
                                                                                                                    end
                                                                                                                    get_local 2
                                                                                                                    i64.load offset=40
                                                                                                                    set_local 3
                                                                                                                    get_local 2
                                                                                                                    i32.const 32
                                                                                                                    i32.add
                                                                                                                    call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                                                                                                    get_local 3
                                                                                                                    i64.const 4294967296
                                                                                                                    i64.lt_u
                                                                                                                    br_if 33 (;@23;)
                                                                                                                    get_local 2
                                                                                                                    i32.const 6
                                                                                                                    i32.store offset=32
                                                                                                                    get_local 1
                                                                                                                    get_local 2
                                                                                                                    i32.const 32
                                                                                                                    i32.add
                                                                                                                    call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                                                                                    set_local 1
                                                                                                                    get_local 0
                                                                                                                    i32.const 1
                                                                                                                    i32.store
                                                                                                                    get_local 0
                                                                                                                    get_local 1
                                                                                                                    i32.store offset=4
                                                                                                                    br 55 (;@1;)
                                                                                                                  end
                                                                                                                  get_local 2
                                                                                                                  i32.const 16
                                                                                                                  i32.add
                                                                                                                  call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                                                                                                  get_local 0
                                                                                                                  get_local 1
                                                                                                                  get_local 5
                                                                                                                  i32.const 16
                                                                                                                  i32.shr_u
                                                                                                                  call $<serde_cbor::de::Deserializer<R>>::parse_str::h98d215bcdb324499
                                                                                                                  br 54 (;@1;)
                                                                                                                end
                                                                                                                get_local 2
                                                                                                                i32.const 16
                                                                                                                i32.add
                                                                                                                call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                                                                                                get_local 0
                                                                                                                get_local 1
                                                                                                                get_local 5
                                                                                                                call $<serde_cbor::de::Deserializer<R>>::parse_str::h98d215bcdb324499
                                                                                                                br 53 (;@1;)
                                                                                                              end
                                                                                                              get_local 2
                                                                                                              i32.const 40
                                                                                                              i32.add
                                                                                                              i32.load
                                                                                                              set_local 1
                                                                                                              get_local 2
                                                                                                              i32.load offset=36
                                                                                                              set_local 5
                                                                                                              get_local 2
                                                                                                              i32.const 32
                                                                                                              i32.add
                                                                                                              call $core::ptr::real_drop_in_place::h29ad1d3d8391eaf1
                                                                                                              get_local 0
                                                                                                              get_local 5
                                                                                                              get_local 1
                                                                                                              call $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_str::hb85104e2478c6a6b
                                                                                                              br 52 (;@1;)
                                                                                                            end
                                                                                                            get_local 2
                                                                                                            i32.const 16
                                                                                                            i32.add
                                                                                                            call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                                                                                            get_local 0
                                                                                                            get_local 1
                                                                                                            get_local 5
                                                                                                            i32.const 8
                                                                                                            i32.shr_u
                                                                                                            i32.const 255
                                                                                                            i32.and
                                                                                                            call $<serde_cbor::de::Deserializer<R>>::parse_str::h98d215bcdb324499
                                                                                                            br 51 (;@1;)
                                                                                                          end
                                                                                                          get_local 2
                                                                                                          i64.load offset=40
                                                                                                          set_local 3
                                                                                                          get_local 2
                                                                                                          i32.const 32
                                                                                                          i32.add
                                                                                                          call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                                                                                          get_local 3
                                                                                                          i64.const 4294967296
                                                                                                          i64.lt_u
                                                                                                          br_if 29 (;@22;)
                                                                                                          get_local 2
                                                                                                          i32.const 6
                                                                                                          i32.store offset=32
                                                                                                          get_local 1
                                                                                                          get_local 2
                                                                                                          i32.const 32
                                                                                                          i32.add
                                                                                                          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                                                                          set_local 1
                                                                                                          get_local 0
                                                                                                          i32.const 1
                                                                                                          i32.store
                                                                                                          get_local 0
                                                                                                          get_local 1
                                                                                                          i32.store offset=4
                                                                                                          br 50 (;@1;)
                                                                                                        end
                                                                                                        get_local 2
                                                                                                        i32.const 16
                                                                                                        i32.add
                                                                                                        call $core::ptr::real_drop_in_place::hdec123f39e7fd47a
                                                                                                        get_local 0
                                                                                                        i32.const 8
                                                                                                        i32.add
                                                                                                        i32.const 6
                                                                                                        i32.store8
                                                                                                        get_local 0
                                                                                                        i32.const 0
                                                                                                        i32.store
                                                                                                        get_local 0
                                                                                                        i32.const 16
                                                                                                        i32.add
                                                                                                        get_local 1
                                                                                                        f32.reinterpret/i32
                                                                                                        f64.promote/f32
                                                                                                        f64.store
                                                                                                        br 49 (;@1;)
                                                                                                      end
                                                                                                      get_local 2
                                                                                                      i32.const 16
                                                                                                      i32.add
                                                                                                      call $core::ptr::real_drop_in_place::hdec123f39e7fd47a
                                                                                                      get_local 0
                                                                                                      i32.const 8
                                                                                                      i32.add
                                                                                                      i32.const 6
                                                                                                      i32.store8
                                                                                                      get_local 0
                                                                                                      i32.const 0
                                                                                                      i32.store
                                                                                                      get_local 0
                                                                                                      i32.const 16
                                                                                                      i32.add
                                                                                                      get_local 1
                                                                                                      f32.reinterpret/i32
                                                                                                      f64.promote/f32
                                                                                                      f64.store
                                                                                                      br 48 (;@1;)
                                                                                                    end
                                                                                                    get_local 2
                                                                                                    i64.load offset=40
                                                                                                    set_local 3
                                                                                                    get_local 2
                                                                                                    i32.const 32
                                                                                                    i32.add
                                                                                                    call $core::ptr::real_drop_in_place::h746cec3cc24d7b97
                                                                                                    get_local 0
                                                                                                    i32.const 16
                                                                                                    i32.add
                                                                                                    get_local 3
                                                                                                    i64.store
                                                                                                    get_local 0
                                                                                                    i32.const 8
                                                                                                    i32.add
                                                                                                    i32.const 6
                                                                                                    i32.store8
                                                                                                    get_local 0
                                                                                                    i32.const 0
                                                                                                    i32.store
                                                                                                    br 47 (;@1;)
                                                                                                  end
                                                                                                  get_local 2
                                                                                                  i32.const 16
                                                                                                  i32.add
                                                                                                  call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                                                                                  get_local 0
                                                                                                  get_local 1
                                                                                                  get_local 5
                                                                                                  i32.const 16
                                                                                                  i32.shr_u
                                                                                                  call $<serde_cbor::de::Deserializer<R>>::parse_array::hb7ac621e8f9f02c0
                                                                                                  br 46 (;@1;)
                                                                                                end
                                                                                                get_local 2
                                                                                                i32.const 16
                                                                                                i32.add
                                                                                                call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                                                                                get_local 0
                                                                                                get_local 1
                                                                                                get_local 5
                                                                                                call $<serde_cbor::de::Deserializer<R>>::parse_array::hb7ac621e8f9f02c0
                                                                                                br 45 (;@1;)
                                                                                              end
                                                                                              get_local 2
                                                                                              i32.const 16
                                                                                              i32.add
                                                                                              call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                                                                              get_local 0
                                                                                              get_local 1
                                                                                              get_local 5
                                                                                              i32.const 8
                                                                                              i32.shr_u
                                                                                              i32.const 255
                                                                                              i32.and
                                                                                              call $<serde_cbor::de::Deserializer<R>>::parse_array::hb7ac621e8f9f02c0
                                                                                              br 44 (;@1;)
                                                                                            end
                                                                                            get_local 2
                                                                                            i64.load offset=40
                                                                                            set_local 3
                                                                                            get_local 2
                                                                                            i32.const 32
                                                                                            i32.add
                                                                                            call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                                                                            get_local 3
                                                                                            i64.const 4294967296
                                                                                            i64.lt_u
                                                                                            br_if 23 (;@21;)
                                                                                            get_local 2
                                                                                            i32.const 6
                                                                                            i32.store offset=32
                                                                                            get_local 1
                                                                                            get_local 2
                                                                                            i32.const 32
                                                                                            i32.add
                                                                                            call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                                                            set_local 1
                                                                                            get_local 0
                                                                                            i32.const 1
                                                                                            i32.store
                                                                                            get_local 0
                                                                                            get_local 1
                                                                                            i32.store offset=4
                                                                                            br 43 (;@1;)
                                                                                          end
                                                                                          get_local 2
                                                                                          i32.const 16
                                                                                          i32.add
                                                                                          call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                                                                          get_local 0
                                                                                          get_local 1
                                                                                          get_local 5
                                                                                          i32.const 16
                                                                                          i32.shr_u
                                                                                          call $<serde_cbor::de::Deserializer<R>>::parse_map::ha7fdb3dc181aca62
                                                                                          br 42 (;@1;)
                                                                                        end
                                                                                        get_local 2
                                                                                        i32.const 16
                                                                                        i32.add
                                                                                        call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                                                                        get_local 0
                                                                                        get_local 1
                                                                                        get_local 5
                                                                                        call $<serde_cbor::de::Deserializer<R>>::parse_map::ha7fdb3dc181aca62
                                                                                        br 41 (;@1;)
                                                                                      end
                                                                                      get_local 2
                                                                                      i32.const 16
                                                                                      i32.add
                                                                                      call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                                                                      get_local 0
                                                                                      get_local 1
                                                                                      get_local 5
                                                                                      i32.const 8
                                                                                      i32.shr_u
                                                                                      i32.const 255
                                                                                      i32.and
                                                                                      call $<serde_cbor::de::Deserializer<R>>::parse_map::ha7fdb3dc181aca62
                                                                                      br 40 (;@1;)
                                                                                    end
                                                                                    get_local 2
                                                                                    i64.load offset=40
                                                                                    set_local 3
                                                                                    get_local 2
                                                                                    i32.const 32
                                                                                    i32.add
                                                                                    call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                                                                    get_local 3
                                                                                    i64.const 4294967296
                                                                                    i64.lt_u
                                                                                    br_if 20 (;@20;)
                                                                                    get_local 2
                                                                                    i32.const 6
                                                                                    i32.store offset=32
                                                                                    get_local 1
                                                                                    get_local 2
                                                                                    i32.const 32
                                                                                    i32.add
                                                                                    call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                                                    set_local 1
                                                                                    get_local 0
                                                                                    i32.const 1
                                                                                    i32.store
                                                                                    get_local 0
                                                                                    get_local 1
                                                                                    i32.store offset=4
                                                                                    br 39 (;@1;)
                                                                                  end
                                                                                  get_local 2
                                                                                  i32.const 16
                                                                                  i32.add
                                                                                  call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                                                                  get_local 0
                                                                                  i32.const 16
                                                                                  i32.add
                                                                                  get_local 7
                                                                                  i64.const -1
                                                                                  i64.xor
                                                                                  i64.store
                                                                                  get_local 0
                                                                                  i32.const 8
                                                                                  i32.add
                                                                                  i32.const 1
                                                                                  i32.store8
                                                                                  get_local 0
                                                                                  i32.const 0
                                                                                  i32.store
                                                                                  br 38 (;@1;)
                                                                                end
                                                                                get_local 2
                                                                                i32.const 16
                                                                                i32.add
                                                                                call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                                                                br 36 (;@2;)
                                                                              end
                                                                              get_local 2
                                                                              i64.load offset=40
                                                                              set_local 3
                                                                              get_local 2
                                                                              i32.const 32
                                                                              i32.add
                                                                              call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                                                              get_local 3
                                                                              i64.const -1
                                                                              i64.le_s
                                                                              br_if 18 (;@19;)
                                                                              get_local 0
                                                                              i32.const 0
                                                                              i32.store
                                                                              get_local 0
                                                                              i32.const 16
                                                                              i32.add
                                                                              get_local 3
                                                                              i64.const -1
                                                                              i64.xor
                                                                              i64.store
                                                                              get_local 0
                                                                              i32.const 8
                                                                              i32.add
                                                                              i32.const 1
                                                                              i32.store8
                                                                              br 36 (;@1;)
                                                                            end
                                                                            get_local 2
                                                                            i32.const 16
                                                                            i32.add
                                                                            call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                                                            get_local 0
                                                                            i32.const 8
                                                                            i32.add
                                                                            i32.const 1
                                                                            i32.store8
                                                                            get_local 0
                                                                            i32.const 0
                                                                            i32.store
                                                                            get_local 0
                                                                            i32.const 16
                                                                            i32.add
                                                                            get_local 3
                                                                            i64.const 8
                                                                            i64.shr_u
                                                                            i64.const -1
                                                                            i64.xor
                                                                            i64.const -256
                                                                            i64.or
                                                                            i64.store
                                                                            br 35 (;@1;)
                                                                          end
                                                                          get_local 2
                                                                          i32.const 16
                                                                          i32.add
                                                                          call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                                                          get_local 0
                                                                          i32.const 8
                                                                          i32.add
                                                                          i32.const 1
                                                                          i32.store8
                                                                          get_local 0
                                                                          i32.const 0
                                                                          i32.store
                                                                          get_local 0
                                                                          i32.const 16
                                                                          i32.add
                                                                          get_local 3
                                                                          i64.const 16
                                                                          i64.shr_u
                                                                          i64.const -1
                                                                          i64.xor
                                                                          i64.const -65536
                                                                          i64.or
                                                                          i64.store
                                                                          br 34 (;@1;)
                                                                        end
                                                                        get_local 2
                                                                        i32.const 32
                                                                        i32.add
                                                                        call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                                                        br 32 (;@2;)
                                                                      end
                                                                      get_local 2
                                                                      i32.const 16
                                                                      i32.add
                                                                      call $core::ptr::real_drop_in_place::h6a6feacd50401bc9
                                                                      get_local 0
                                                                      i32.const 16
                                                                      i32.add
                                                                      get_local 7
                                                                      i64.store
                                                                      get_local 0
                                                                      i32.const 8
                                                                      i32.add
                                                                      i32.const 0
                                                                      i32.store8
                                                                      get_local 0
                                                                      i32.const 0
                                                                      i32.store
                                                                      br 32 (;@1;)
                                                                    end
                                                                    get_local 2
                                                                    i32.const 16
                                                                    i32.add
                                                                    call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                                                    br 30 (;@2;)
                                                                  end
                                                                  get_local 2
                                                                  i32.const 16
                                                                  i32.add
                                                                  call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                                                  br 29 (;@2;)
                                                                end
                                                                get_local 2
                                                                i64.load offset=40
                                                                set_local 3
                                                                get_local 2
                                                                i32.const 32
                                                                i32.add
                                                                call $core::ptr::real_drop_in_place::h8a4af4463c92ac7b
                                                                get_local 0
                                                                i32.const 16
                                                                i32.add
                                                                get_local 3
                                                                i64.store
                                                                get_local 0
                                                                i32.const 8
                                                                i32.add
                                                                i32.const 0
                                                                i32.store8
                                                                get_local 0
                                                                i32.const 0
                                                                i32.store
                                                                br 29 (;@1;)
                                                              end
                                                              get_local 2
                                                              i32.const 16
                                                              i32.add
                                                              call $core::ptr::real_drop_in_place::h5010e83d24b4ee3d
                                                              get_local 0
                                                              i32.const 8
                                                              i32.add
                                                              i32.const 0
                                                              i32.store8
                                                              get_local 0
                                                              i32.const 0
                                                              i32.store
                                                              get_local 0
                                                              i32.const 16
                                                              i32.add
                                                              get_local 3
                                                              i64.const 8
                                                              i64.shr_u
                                                              i64.const 255
                                                              i64.and
                                                              i64.store
                                                              br 28 (;@1;)
                                                            end
                                                            get_local 2
                                                            i32.const 16
                                                            i32.add
                                                            call $core::ptr::real_drop_in_place::hb3e3a30f187a5fed
                                                            get_local 0
                                                            i32.const 8
                                                            i32.add
                                                            i32.const 0
                                                            i32.store8
                                                            get_local 0
                                                            i32.const 0
                                                            i32.store
                                                            get_local 0
                                                            i32.const 16
                                                            i32.add
                                                            get_local 3
                                                            i64.const 16
                                                            i64.shr_u
                                                            i64.const 65535
                                                            i64.and
                                                            i64.store
                                                            br 27 (;@1;)
                                                          end
                                                          get_local 2
                                                          i32.const 13
                                                          i32.store offset=32
                                                          get_local 1
                                                          get_local 2
                                                          i32.const 32
                                                          i32.add
                                                          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                          set_local 1
                                                          get_local 0
                                                          i32.const 1
                                                          i32.store
                                                          get_local 0
                                                          get_local 1
                                                          i32.store offset=4
                                                          br 26 (;@1;)
                                                        end
                                                        get_local 2
                                                        i32.const 13
                                                        i32.store offset=32
                                                        get_local 1
                                                        get_local 2
                                                        i32.const 32
                                                        i32.add
                                                        call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                        set_local 1
                                                        get_local 0
                                                        i32.const 1
                                                        i32.store
                                                        get_local 0
                                                        get_local 1
                                                        i32.store offset=4
                                                        br 25 (;@1;)
                                                      end
                                                      get_local 5
                                                      i32.const 60
                                                      i32.ne
                                                      br_if 7 (;@18;)
                                                      get_local 2
                                                      i32.const 8
                                                      i32.store offset=32
                                                      get_local 1
                                                      get_local 2
                                                      i32.const 32
                                                      i32.add
                                                      call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                                      set_local 1
                                                      get_local 0
                                                      i32.const 1
                                                      i32.store
                                                      get_local 0
                                                      get_local 1
                                                      i32.store offset=4
                                                      br 24 (;@1;)
                                                    end
                                                    get_local 2
                                                    i32.const 24
                                                    i32.add
                                                    get_local 2
                                                    i32.const 48
                                                    i32.add
                                                    i64.load
                                                    i64.store
                                                    get_local 2
                                                    get_local 2
                                                    i64.load offset=40
                                                    i64.store offset=16
                                                    get_local 2
                                                    i32.const 32
                                                    i32.add
                                                    get_local 1
                                                    call $<serde_cbor::de::Deserializer<R>>::next::h6e15d341856c98a1
                                                    get_local 2
                                                    get_local 2
                                                    i64.load offset=32
                                                    tee_local 3
                                                    i64.store offset=56
                                                    get_local 3
                                                    i32.wrap/i64
                                                    i32.const 255
                                                    i32.and
                                                    i32.const 1
                                                    i32.ne
                                                    br_if 7 (;@17;)
                                                    get_local 3
                                                    i64.const 32
                                                    i64.shr_u
                                                    i32.wrap/i64
                                                    set_local 4
                                                    get_local 2
                                                    i32.const 16
                                                    i32.add
                                                    call $core::ptr::real_drop_in_place::h88bf5e1688a86f22
                                                    i32.const 1
                                                    set_local 5
                                                    br 16 (;@8;)
                                                  end
                                                  get_local 2
                                                  i32.const 24
                                                  i32.add
                                                  get_local 2
                                                  i32.const 48
                                                  i32.add
                                                  i64.load
                                                  i64.store
                                                  get_local 2
                                                  get_local 2
                                                  i64.load offset=40
                                                  i64.store offset=16
                                                  get_local 2
                                                  i32.const 32
                                                  i32.add
                                                  get_local 1
                                                  call $<serde_cbor::de::Deserializer<R>>::next::h6e15d341856c98a1
                                                  get_local 2
                                                  get_local 2
                                                  i64.load offset=32
                                                  tee_local 3
                                                  i64.store offset=56
                                                  get_local 3
                                                  i32.wrap/i64
                                                  i32.const 255
                                                  i32.and
                                                  i32.const 1
                                                  i32.ne
                                                  br_if 7 (;@16;)
                                                  get_local 3
                                                  i64.const 32
                                                  i64.shr_u
                                                  i32.wrap/i64
                                                  set_local 4
                                                  get_local 2
                                                  i32.const 16
                                                  i32.add
                                                  call $core::ptr::real_drop_in_place::h88bf5e1688a86f22
                                                  i32.const 1
                                                  set_local 5
                                                  br 19 (;@4;)
                                                end
                                                get_local 0
                                                get_local 1
                                                get_local 3
                                                i32.wrap/i64
                                                call $<serde_cbor::de::Deserializer<R>>::parse_bytes::h9257a7eed0482db0
                                                br 21 (;@1;)
                                              end
                                              get_local 0
                                              get_local 1
                                              get_local 3
                                              i32.wrap/i64
                                              call $<serde_cbor::de::Deserializer<R>>::parse_str::h98d215bcdb324499
                                              br 20 (;@1;)
                                            end
                                            get_local 0
                                            get_local 1
                                            get_local 3
                                            i32.wrap/i64
                                            call $<serde_cbor::de::Deserializer<R>>::parse_array::hb7ac621e8f9f02c0
                                            br 19 (;@1;)
                                          end
                                          get_local 0
                                          get_local 1
                                          get_local 3
                                          i32.wrap/i64
                                          call $<serde_cbor::de::Deserializer<R>>::parse_map::ha7fdb3dc181aca62
                                          br 18 (;@1;)
                                        end
                                        get_local 2
                                        i32.const 5
                                        i32.store offset=32
                                        get_local 1
                                        get_local 2
                                        i32.const 32
                                        i32.add
                                        call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                        set_local 1
                                        get_local 0
                                        i32.const 1
                                        i32.store
                                        get_local 0
                                        get_local 1
                                        i32.store offset=4
                                        br 17 (;@1;)
                                      end
                                      get_local 4
                                      i32.const -64
                                      i32.add
                                      i32.const 255
                                      i32.and
                                      i32.const 24
                                      i32.ge_u
                                      br_if 2 (;@15;)
                                      get_local 0
                                      get_local 1
                                      get_local 4
                                      i32.const 255
                                      i32.and
                                      i32.const -64
                                      i32.add
                                      call $<serde_cbor::de::Deserializer<R>>::parse_bytes::h9257a7eed0482db0
                                      br 16 (;@1;)
                                    end
                                    get_local 3
                                    i64.const 65280
                                    i64.and
                                    i64.const 256
                                    i64.ne
                                    br_if 2 (;@14;)
                                    get_local 3
                                    i64.const 16711680
                                    i64.and
                                    i64.const 16711680
                                    i64.ne
                                    br_if 5 (;@11;)
                                    get_local 2
                                    i32.const 8
                                    i32.add
                                    get_local 2
                                    i32.const 16
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    i64.load
                                    i64.store
                                    get_local 2
                                    get_local 2
                                    i64.load offset=16
                                    i64.store
                                    i32.const 0
                                    set_local 5
                                    br 7 (;@9;)
                                  end
                                  get_local 3
                                  i64.const 65280
                                  i64.and
                                  i64.const 256
                                  i64.ne
                                  br_if 2 (;@13;)
                                  get_local 3
                                  i64.const 16711680
                                  i64.and
                                  i64.const 16711680
                                  i64.ne
                                  br_if 8 (;@7;)
                                  get_local 2
                                  i32.const 8
                                  i32.add
                                  get_local 2
                                  i32.const 16
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  i64.load
                                  i64.store
                                  get_local 2
                                  get_local 2
                                  i64.load offset=16
                                  i64.store
                                  i32.const 0
                                  set_local 5
                                  br 10 (;@5;)
                                end
                                get_local 4
                                i32.const -92
                                i32.add
                                i32.const 255
                                i32.and
                                i32.const 3
                                i32.ge_u
                                br_if 2 (;@12;)
                                get_local 2
                                i32.const 8
                                i32.store offset=32
                                get_local 1
                                get_local 2
                                i32.const 32
                                i32.add
                                call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                                set_local 1
                                get_local 0
                                i32.const 1
                                i32.store
                                get_local 0
                                get_local 1
                                i32.store offset=4
                                br 13 (;@1;)
                              end
                              get_local 2
                              i32.const 3
                              i32.store offset=32
                              get_local 1
                              get_local 2
                              i32.const 32
                              i32.add
                              call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                              set_local 4
                              br 3 (;@10;)
                            end
                            get_local 2
                            i32.const 4
                            i32.store offset=32
                            get_local 1
                            get_local 2
                            i32.const 32
                            i32.add
                            call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                            set_local 4
                            br 6 (;@6;)
                          end
                          get_local 4
                          i32.const -96
                          i32.add
                          i32.const 255
                          i32.and
                          i32.const 24
                          i32.ge_u
                          br_if 8 (;@3;)
                          get_local 0
                          get_local 1
                          get_local 4
                          i32.const 255
                          i32.and
                          i32.const -96
                          i32.add
                          call $<serde_cbor::de::Deserializer<R>>::parse_str::h98d215bcdb324499
                          br 10 (;@1;)
                        end
                        get_local 2
                        i32.const 10
                        i32.store offset=32
                        get_local 1
                        get_local 2
                        i32.const 32
                        i32.add
                        call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                        set_local 4
                      end
                      get_local 2
                      i32.const 16
                      i32.add
                      call $core::ptr::real_drop_in_place::h88bf5e1688a86f22
                      i32.const 1
                      set_local 5
                    end
                    get_local 2
                    i32.const 56
                    i32.add
                    call $core::ptr::real_drop_in_place::h4acc31ecbd8a805a
                  end
                  get_local 0
                  get_local 4
                  i32.store offset=4
                  get_local 0
                  get_local 5
                  i32.store
                  get_local 0
                  i32.const 8
                  i32.add
                  get_local 2
                  i64.load
                  i64.store
                  get_local 0
                  i32.const 16
                  i32.add
                  get_local 2
                  i32.const 8
                  i32.add
                  i64.load
                  i64.store
                  get_local 1
                  i32.const 24
                  i32.add
                  tee_local 0
                  get_local 0
                  i32.load8_u
                  i32.const 1
                  i32.add
                  i32.store8
                  br 6 (;@1;)
                end
                get_local 2
                i32.const 10
                i32.store offset=32
                get_local 1
                get_local 2
                i32.const 32
                i32.add
                call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                set_local 4
              end
              get_local 2
              i32.const 16
              i32.add
              call $core::ptr::real_drop_in_place::h88bf5e1688a86f22
              i32.const 1
              set_local 5
            end
            get_local 2
            i32.const 56
            i32.add
            call $core::ptr::real_drop_in_place::h4acc31ecbd8a805a
          end
          get_local 0
          get_local 4
          i32.store offset=4
          get_local 0
          get_local 5
          i32.store
          get_local 0
          i32.const 8
          i32.add
          get_local 2
          i64.load
          i64.store
          get_local 0
          i32.const 16
          i32.add
          get_local 2
          i32.const 8
          i32.add
          i64.load
          i64.store
          get_local 1
          i32.const 24
          i32.add
          tee_local 0
          get_local 0
          i32.load8_u
          i32.const 1
          i32.add
          i32.store8
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const -124
          i32.add
          i32.const 255
          i32.and
          i32.const 3
          i32.ge_u
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=32
          get_local 1
          get_local 2
          i32.const 32
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          get_local 4
          i32.const 255
          i32.and
          tee_local 6
          i32.const 152
          i32.ge_u
          br_if 0 (;@3;)
          get_local 0
          get_local 1
          get_local 6
          i32.const -128
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::parse_array::hb7ac621e8f9f02c0
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const 100
          i32.add
          i32.const 255
          i32.and
          i32.const 3
          i32.ge_u
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=32
          get_local 1
          get_local 2
          i32.const 32
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const 96
          i32.add
          i32.const 255
          i32.and
          i32.const 24
          i32.ge_u
          br_if 0 (;@3;)
          get_local 0
          get_local 1
          get_local 4
          i32.const 255
          i32.and
          i32.const -160
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::parse_map::ha7fdb3dc181aca62
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const 68
          i32.add
          i32.const 255
          i32.and
          i32.const 3
          i32.ge_u
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=32
          get_local 1
          get_local 2
          i32.const 32
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        get_local 4
        i32.const 64
        i32.add
        i32.const 255
        i32.and
        i32.const 24
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          get_local 5
          i32.const 220
          i32.ne
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=32
          get_local 1
          get_local 2
          i32.const 32
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const 32
          i32.add
          i32.const 255
          i32.and
          i32.const 20
          i32.ge_u
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=32
          get_local 1
          get_local 2
          i32.const 32
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 4
          i32.const 255
          i32.and
          i32.const 252
          i32.lt_u
          br_if 0 (;@3;)
          get_local 4
          i32.const 255
          i32.and
          i32.const 255
          i32.eq
          br_if 0 (;@3;)
          get_local 2
          i32.const 8
          i32.store offset=32
          get_local 1
          get_local 2
          i32.const 32
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        call $std::panicking::begin_panic::h9d25ce91d6d8ef58
        unreachable
      end
      get_local 0
      get_local 1
      call $<serde_cbor::de::Deserializer<R>>::parse_value::h0681e0fbfcf892e9
    end
    get_local 2
    i32.const 64
    i32.add
    set_global 0)
  (func $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_seq::h5b1349a1caec1a84 (type 5) (param i32 i32)
    (local i32 i32 i32 i32 i64 i32)
    get_global 0
    i32.const 80
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 0
    i32.store offset=8
    get_local 2
    i64.const 8
    i64.store
    get_local 2
    i32.const 16
    i32.add
    i32.const 1
    i32.or
    set_local 3
    get_local 2
    i32.const 56
    i32.add
    i32.const 9
    i32.add
    set_local 4
    get_local 2
    i32.const 56
    i32.add
    i32.const 8
    i32.add
    set_local 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                loop  ;; label = @7
                  get_local 2
                  i32.const 56
                  i32.add
                  get_local 1
                  call $<serde_cbor::de::Deserializer<R>>::peek::h171a225e40f8e5a4
                  get_local 2
                  get_local 2
                  i64.load offset=56
                  tee_local 6
                  i64.store offset=48
                  get_local 6
                  i32.wrap/i64
                  i32.const 255
                  i32.and
                  i32.const 1
                  i32.eq
                  br_if 4 (;@3;)
                  block  ;; label = @8
                    get_local 6
                    i64.const 65280
                    i64.and
                    i64.const 256
                    i64.ne
                    br_if 0 (;@8;)
                    get_local 6
                    i64.const 16711680
                    i64.and
                    i64.const 16711680
                    i64.eq
                    br_if 2 (;@6;)
                    get_local 2
                    i32.const 48
                    i32.add
                    call $core::ptr::real_drop_in_place::h4acc31ecbd8a805a
                    get_local 2
                    i32.const 56
                    i32.add
                    get_local 1
                    call $<serde_cbor::de::Deserializer<R>>::parse_value::h0681e0fbfcf892e9
                    get_local 2
                    i32.load offset=56
                    i32.const 1
                    i32.eq
                    br_if 4 (;@4;)
                    get_local 2
                    get_local 4
                    i64.load align=1
                    i64.store offset=32
                    get_local 2
                    get_local 4
                    i32.const 7
                    i32.add
                    i64.load align=1
                    i64.store offset=39 align=1
                    get_local 5
                    i32.load8_u
                    set_local 7
                    get_local 3
                    get_local 2
                    i64.load offset=32
                    i64.store align=1
                    get_local 3
                    i32.const 7
                    i32.add
                    get_local 2
                    i64.load offset=39 align=1
                    i64.store align=1
                    get_local 2
                    get_local 7
                    i32.store8 offset=16
                    get_local 7
                    i32.const 9
                    i32.eq
                    br_if 3 (;@5;)
                    get_local 5
                    get_local 2
                    i32.const 16
                    i32.add
                    i32.const 8
                    i32.add
                    i64.load
                    i64.store
                    get_local 2
                    get_local 2
                    i64.load offset=16
                    i64.store offset=56
                    get_local 2
                    get_local 2
                    i32.const 56
                    i32.add
                    call $<alloc::vec::Vec<T>>::push::h33892c1c180dc67a
                    br 1 (;@7;)
                  end
                end
                get_local 2
                i32.const 3
                i32.store offset=56
                get_local 1
                get_local 2
                i32.const 56
                i32.add
                call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                set_local 7
                get_local 2
                i32.const 48
                i32.add
                call $core::ptr::real_drop_in_place::h4acc31ecbd8a805a
                br 4 (;@2;)
              end
              get_local 2
              i32.const 48
              i32.add
              call $core::ptr::real_drop_in_place::h4acc31ecbd8a805a
              get_local 3
              get_local 2
              i64.load offset=32
              i64.store align=1
              get_local 3
              i32.const 7
              i32.add
              get_local 2
              i64.load offset=39 align=1
              i64.store align=1
              get_local 2
              i32.const 9
              i32.store8 offset=16
            end
            get_local 2
            i32.const 16
            i32.add
            call $core::ptr::real_drop_in_place::h4dbdb21fb8a398dc
            get_local 2
            i32.const 67
            i32.add
            get_local 2
            i32.const 8
            i32.add
            i32.load
            i32.store align=1
            get_local 0
            i32.const 8
            i32.add
            i32.const 4
            i32.store8
            get_local 0
            i32.const 0
            i32.store
            get_local 2
            get_local 2
            i64.load
            i64.store offset=59 align=1
            get_local 0
            i32.const 9
            i32.add
            get_local 2
            i64.load offset=56 align=1
            i64.store align=1
            get_local 0
            i32.const 16
            i32.add
            get_local 2
            i32.const 63
            i32.add
            i64.load align=1
            i64.store align=1
            br 3 (;@1;)
          end
          get_local 2
          i32.load offset=60
          set_local 7
          br 1 (;@2;)
        end
        get_local 6
        i64.const 32
        i64.shr_u
        i32.wrap/i64
        set_local 7
      end
      get_local 0
      i32.const 1
      i32.store
      get_local 0
      get_local 7
      i32.store offset=4
      get_local 2
      call $core::ptr::real_drop_in_place::h1e3b4a0c2771cc68
    end
    get_local 2
    i32.const 80
    i32.add
    set_global 0)
  (func $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_map::hf79da5ac2f849009 (type 5) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32)
    get_global 0
    i32.const 192
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i64.const 0
    i64.store offset=4 align=4
    get_local 2
    i32.const 1049348
    i32.store
    get_local 2
    i32.const 16
    i32.add
    i32.const 1
    i32.or
    set_local 3
    get_local 2
    i32.const 175
    i32.add
    set_local 4
    get_local 2
    i32.const 128
    i32.add
    i32.const 1
    i32.or
    set_local 5
    get_local 2
    i32.const 160
    i32.add
    i32.const 8
    i32.add
    set_local 6
    get_local 2
    i32.const 96
    i32.add
    i32.const 1
    i32.or
    set_local 7
    get_local 2
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    set_local 8
    get_local 2
    i32.const 169
    i32.add
    tee_local 9
    i32.const 7
    i32.add
    set_local 10
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                loop  ;; label = @7
                  get_local 2
                  i32.const 160
                  i32.add
                  get_local 1
                  call $<serde_cbor::de::Deserializer<R>>::peek::h171a225e40f8e5a4
                  get_local 2
                  get_local 2
                  i64.load offset=160
                  tee_local 11
                  i64.store offset=144
                  get_local 11
                  i32.wrap/i64
                  i32.const 255
                  i32.and
                  i32.const 1
                  i32.eq
                  br_if 1 (;@6;)
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          get_local 11
                          i64.const 65280
                          i64.and
                          i64.const 256
                          i64.ne
                          br_if 0 (;@11;)
                          get_local 11
                          i64.const 16711680
                          i64.and
                          i64.const 16711680
                          i64.ne
                          br_if 2 (;@9;)
                          i32.const 0
                          set_local 12
                          i32.const 5
                          set_local 13
                          br 1 (;@10;)
                        end
                        get_local 2
                        i32.const 4
                        i32.store offset=160
                        get_local 1
                        get_local 2
                        i32.const 160
                        i32.add
                        call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
                        set_local 14
                        i32.const 1
                        set_local 12
                      end
                      get_local 2
                      i32.const 144
                      i32.add
                      call $core::ptr::real_drop_in_place::h4acc31ecbd8a805a
                      get_local 12
                      i32.eqz
                      br_if 1 (;@8;)
                      br 7 (;@2;)
                    end
                    get_local 2
                    i32.const 144
                    i32.add
                    call $core::ptr::real_drop_in_place::h4acc31ecbd8a805a
                    get_local 2
                    i32.const 160
                    i32.add
                    get_local 1
                    call $<serde_cbor::de::Deserializer<R>>::parse_value::h1a918e0cae4b9718
                    get_local 2
                    i32.load offset=160
                    i32.const 1
                    i32.eq
                    br_if 5 (;@3;)
                    get_local 2
                    get_local 9
                    i64.load align=1
                    i64.store offset=112
                    get_local 2
                    get_local 10
                    i64.load align=1
                    i64.store offset=119 align=1
                    get_local 6
                    i32.load8_u
                    set_local 13
                  end
                  get_local 7
                  get_local 2
                  i64.load offset=112
                  i64.store align=1
                  get_local 7
                  i32.const 7
                  i32.add
                  get_local 2
                  i64.load offset=119 align=1
                  i64.store align=1
                  get_local 2
                  get_local 13
                  i32.store8 offset=96
                  block  ;; label = @8
                    block  ;; label = @9
                      get_local 13
                      i32.const 255
                      i32.and
                      i32.const 5
                      i32.ne
                      br_if 0 (;@9;)
                      get_local 2
                      i32.const 96
                      i32.add
                      call $core::ptr::real_drop_in_place::h96dad90eb468759f
                      i32.const 5
                      set_local 12
                      br 1 (;@8;)
                    end
                    get_local 2
                    i32.const 128
                    i32.add
                    i32.const 8
                    i32.add
                    get_local 2
                    i32.const 96
                    i32.add
                    i32.const 8
                    i32.add
                    i64.load
                    i64.store
                    get_local 2
                    get_local 2
                    i64.load offset=96
                    i64.store offset=128
                    get_local 2
                    i32.const 160
                    i32.add
                    get_local 1
                    call $<serde_cbor::de::Deserializer<R>>::parse_value::h0681e0fbfcf892e9
                    get_local 2
                    i32.load offset=160
                    i32.const 1
                    i32.eq
                    br_if 4 (;@4;)
                    get_local 2
                    i32.const 144
                    i32.add
                    i32.const 8
                    i32.add
                    tee_local 12
                    get_local 6
                    i32.const 8
                    i32.add
                    i64.load
                    i64.store
                    get_local 2
                    get_local 6
                    i64.load
                    i64.store offset=144
                    get_local 4
                    get_local 2
                    i64.load offset=144
                    i64.store align=1
                    get_local 4
                    i32.const 8
                    i32.add
                    get_local 12
                    i64.load
                    i64.store align=1
                    get_local 2
                    get_local 5
                    i32.const 7
                    i32.add
                    i64.load align=1
                    i64.store offset=167 align=1
                    get_local 2
                    i32.const 48
                    i32.add
                    i32.const 8
                    i32.add
                    get_local 6
                    i64.load
                    i64.store
                    get_local 2
                    i32.const 48
                    i32.add
                    i32.const 16
                    i32.add
                    get_local 2
                    i32.const 160
                    i32.add
                    i32.const 16
                    i32.add
                    i64.load
                    i64.store
                    get_local 2
                    i32.const 48
                    i32.add
                    i32.const 23
                    i32.add
                    get_local 2
                    i32.const 160
                    i32.add
                    i32.const 23
                    i32.add
                    i64.load align=1
                    i64.store align=1
                    get_local 2
                    get_local 5
                    i64.load align=1
                    i64.store offset=160
                    get_local 2
                    get_local 2
                    i64.load offset=160
                    i64.store offset=48
                    get_local 2
                    i32.load8_u offset=128
                    set_local 12
                  end
                  get_local 3
                  get_local 2
                  i64.load offset=48
                  i64.store align=1
                  get_local 3
                  i32.const 8
                  i32.add
                  get_local 2
                  i32.const 48
                  i32.add
                  i32.const 8
                  i32.add
                  i64.load
                  i64.store align=1
                  get_local 3
                  i32.const 16
                  i32.add
                  get_local 2
                  i32.const 48
                  i32.add
                  i32.const 16
                  i32.add
                  i64.load
                  i64.store align=1
                  get_local 3
                  i32.const 23
                  i32.add
                  get_local 2
                  i32.const 48
                  i32.add
                  i32.const 23
                  i32.add
                  i64.load align=1
                  i64.store align=1
                  get_local 2
                  get_local 12
                  i32.store8 offset=16
                  get_local 12
                  i32.const 255
                  i32.and
                  i32.const 5
                  i32.eq
                  br_if 2 (;@5;)
                  get_local 2
                  i32.const 144
                  i32.add
                  i32.const 8
                  i32.add
                  get_local 2
                  i32.const 16
                  i32.add
                  i32.const 8
                  i32.add
                  i64.load
                  i64.store
                  get_local 2
                  get_local 2
                  i64.load offset=16
                  i64.store offset=144
                  get_local 6
                  get_local 8
                  i32.const 8
                  i32.add
                  i64.load
                  i64.store
                  get_local 2
                  get_local 8
                  i64.load
                  i64.store offset=160
                  get_local 2
                  i32.const 80
                  i32.add
                  get_local 2
                  get_local 2
                  i32.const 144
                  i32.add
                  get_local 2
                  i32.const 160
                  i32.add
                  call $<alloc::collections::btree::map::BTreeMap<K, V>>::insert::h3153c5f3f9ba0ab6
                  get_local 2
                  i32.const 80
                  i32.add
                  call $core::ptr::real_drop_in_place::h4dbdb21fb8a398dc
                  br 0 (;@7;)
                end
              end
              get_local 11
              i64.const 32
              i64.shr_u
              i32.wrap/i64
              set_local 14
              br 3 (;@2;)
            end
            get_local 2
            i32.const 16
            i32.add
            call $core::ptr::real_drop_in_place::hc824168576c4062a
            get_local 2
            i32.const 27
            i32.add
            get_local 2
            i32.const 8
            i32.add
            i32.load
            i32.store align=1
            get_local 0
            i32.const 8
            i32.add
            i32.const 5
            i32.store8
            get_local 0
            i32.const 0
            i32.store
            get_local 2
            get_local 2
            i64.load
            i64.store offset=19 align=1
            get_local 0
            i32.const 9
            i32.add
            get_local 2
            i64.load offset=16 align=1
            i64.store align=1
            get_local 0
            i32.const 16
            i32.add
            get_local 2
            i32.const 23
            i32.add
            i64.load align=1
            i64.store align=1
            br 3 (;@1;)
          end
          get_local 2
          i32.load offset=164
          set_local 14
          get_local 2
          i32.const 128
          i32.add
          call $core::ptr::real_drop_in_place::h1ad607e1ed7b8ef7
          br 1 (;@2;)
        end
        get_local 2
        i32.load offset=164
        set_local 14
      end
      get_local 0
      i32.const 1
      i32.store
      get_local 0
      get_local 14
      i32.store offset=4
      get_local 2
      call $<alloc::collections::btree::map::BTreeMap<K, V> as core::ops::drop::Drop>::drop::h2a5dac4e76049b5f
    end
    get_local 2
    i32.const 192
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_bytes::h9257a7eed0482db0 (type 10) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 3
    set_global 0
    get_local 1
    i32.const 12
    i32.add
    call $<alloc::vec::Vec<T>>::clear::h9dc5423f20bd3d6b
    get_local 3
    get_local 1
    get_local 2
    call $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read::ha7a244439c0dbf0c
    block  ;; label = @1
      block  ;; label = @2
        get_local 3
        i32.load
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        get_local 0
        get_local 3
        i32.load offset=4
        i32.store offset=4
        get_local 0
        i32.const 1
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        get_local 3
        i32.load offset=4
        tee_local 2
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        get_local 2
        get_local 3
        i32.const 8
        i32.add
        i32.load
        call $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_bytes::ha63b49f742f3cc98
        br 1 (;@1;)
      end
      get_local 0
      get_local 1
      i32.const 12
      i32.add
      i32.load
      get_local 1
      i32.const 20
      i32.add
      i32.load
      call $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_bytes::ha63b49f742f3cc98
    end
    get_local 3
    i32.const 16
    i32.add
    set_global 0)
  (func $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_bytes::ha63b49f742f3cc98 (type 10) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 1
    get_local 2
    call $alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned::h6fbdcae70eb63b1d
    get_local 3
    i32.const 28
    i32.add
    get_local 3
    i32.const 8
    i32.add
    i32.load
    i32.store align=1
    get_local 0
    i32.const 8
    i32.add
    i32.const 2
    i32.store8
    get_local 0
    i32.const 0
    i32.store
    get_local 3
    get_local 3
    i64.load
    i64.store offset=20 align=1
    get_local 0
    i32.const 9
    i32.add
    get_local 3
    i64.load offset=17 align=1
    i64.store align=1
    get_local 0
    i32.const 16
    i32.add
    get_local 3
    i32.const 24
    i32.add
    i64.load align=1
    i64.store align=1
    get_local 3
    i32.const 32
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_str::h98d215bcdb324499 (type 10) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 3
    set_global 0
    get_local 1
    i32.const 12
    i32.add
    call $<alloc::vec::Vec<T>>::clear::h9dc5423f20bd3d6b
    get_local 3
    get_local 1
    get_local 2
    call $<serde_cbor::read::SliceRead<'a> as serde_cbor::read::Read<'a>>::read::ha7a244439c0dbf0c
    block  ;; label = @1
      block  ;; label = @2
        get_local 3
        i32.load
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        get_local 0
        get_local 3
        i32.load offset=4
        i32.store offset=4
        get_local 0
        i32.const 1
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 3
            i32.load offset=4
            tee_local 2
            i32.eqz
            br_if 0 (;@4;)
            get_local 3
            i32.const 16
            i32.add
            get_local 1
            get_local 2
            get_local 3
            i32.const 8
            i32.add
            i32.load
            call $<serde_cbor::de::Deserializer<R>>::convert_str::h371c1b4030a159fe
            get_local 3
            i32.load offset=16
            i32.const 1
            i32.ne
            br_if 1 (;@3;)
            get_local 0
            get_local 3
            i32.load offset=20
            i32.store offset=4
            get_local 0
            i32.const 1
            i32.store
            br 3 (;@1;)
          end
          get_local 3
          i32.const 16
          i32.add
          get_local 1
          get_local 1
          i32.const 12
          i32.add
          i32.load
          get_local 1
          i32.const 20
          i32.add
          i32.load
          call $<serde_cbor::de::Deserializer<R>>::convert_str::h371c1b4030a159fe
          get_local 3
          i32.load offset=16
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
          get_local 0
          get_local 3
          i32.load offset=20
          i32.store offset=4
          get_local 0
          i32.const 1
          i32.store
          br 2 (;@1;)
        end
        get_local 3
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i32.load
        set_local 1
        get_local 3
        i32.load offset=20
        set_local 2
        get_local 3
        i32.const 16
        i32.add
        call $core::ptr::real_drop_in_place::h29ad1d3d8391eaf1
        get_local 0
        get_local 2
        get_local 1
        call $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_str::hb85104e2478c6a6b
        br 1 (;@1;)
      end
      get_local 3
      i32.const 24
      i32.add
      i32.load
      set_local 1
      get_local 3
      i32.load offset=20
      set_local 2
      get_local 3
      i32.const 16
      i32.add
      call $core::ptr::real_drop_in_place::h29ad1d3d8391eaf1
      get_local 0
      get_local 2
      get_local 1
      call $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_str::hb85104e2478c6a6b
    end
    get_local 3
    i32.const 32
    i32.add
    set_global 0)
  (func $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_str::hb85104e2478c6a6b (type 10) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 1
    get_local 2
    call $alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned::h6fbdcae70eb63b1d
    get_local 3
    i32.const 28
    i32.add
    get_local 3
    i32.const 8
    i32.add
    i32.load
    i32.store align=1
    get_local 0
    i32.const 8
    i32.add
    i32.const 3
    i32.store8
    get_local 0
    i32.const 0
    i32.store
    get_local 3
    get_local 3
    i64.load
    i64.store offset=20 align=1
    get_local 0
    i32.const 9
    i32.add
    get_local 3
    i64.load offset=17 align=1
    i64.store align=1
    get_local 0
    i32.const 16
    i32.add
    get_local 3
    i32.const 24
    i32.add
    i64.load align=1
    i64.store align=1
    get_local 3
    i32.const 32
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_array::hb7ac621e8f9f02c0 (type 10) (param i32 i32 i32)
    (local i32 i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 3
    set_global 0
    get_local 1
    get_local 1
    i32.load8_u offset=24
    i32.const -1
    i32.add
    tee_local 4
    i32.store8 offset=24
    get_local 3
    get_local 2
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 4
            i32.const 255
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            get_local 3
            i32.const 24
            i32.add
            get_local 1
            get_local 3
            i32.const 4
            i32.add
            call $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_seq::he60efaa74a23e915
            i32.const 1
            set_local 2
            get_local 3
            i32.load offset=24
            i32.const 1
            i32.ne
            br_if 1 (;@3;)
            get_local 3
            i32.load offset=28
            set_local 4
            br 2 (;@2;)
          end
          get_local 3
          i32.const 13
          i32.store offset=24
          get_local 1
          get_local 3
          i32.const 24
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        get_local 3
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        tee_local 2
        get_local 3
        i32.const 40
        i32.add
        i64.load
        i64.store
        get_local 3
        get_local 3
        i64.load offset=32
        i64.store offset=8
        block  ;; label = @3
          get_local 3
          i32.load offset=4
          i32.eqz
          br_if 0 (;@3;)
          get_local 3
          i32.const 10
          i32.store offset=24
          get_local 1
          get_local 3
          i32.const 24
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 4
          get_local 3
          i32.const 8
          i32.add
          call $core::ptr::real_drop_in_place::h88bf5e1688a86f22
          i32.const 1
          set_local 2
          br 1 (;@2;)
        end
        get_local 3
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        get_local 2
        i64.load
        i64.store
        get_local 3
        get_local 3
        i64.load offset=8
        i64.store offset=24
        i32.const 0
        set_local 2
      end
      get_local 0
      get_local 4
      i32.store offset=4
      get_local 0
      get_local 2
      i32.store
      get_local 0
      i32.const 8
      i32.add
      get_local 3
      i64.load offset=24
      i64.store
      get_local 0
      i32.const 16
      i32.add
      get_local 3
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      i64.load
      i64.store
      get_local 1
      i32.const 24
      i32.add
      tee_local 1
      get_local 1
      i32.load8_u
      i32.const 1
      i32.add
      i32.store8
    end
    get_local 3
    i32.const 48
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::parse_map::ha7fdb3dc181aca62 (type 10) (param i32 i32 i32)
    (local i32 i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 3
    set_global 0
    get_local 1
    get_local 1
    i32.load8_u offset=24
    i32.const -1
    i32.add
    tee_local 4
    i32.store8 offset=24
    get_local 3
    get_local 2
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 4
            i32.const 255
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            get_local 3
            i32.const 24
            i32.add
            get_local 1
            get_local 3
            i32.const 4
            i32.add
            call $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_map::h6ca5f83bcfe498f1
            i32.const 1
            set_local 2
            get_local 3
            i32.load offset=24
            i32.const 1
            i32.ne
            br_if 1 (;@3;)
            get_local 3
            i32.load offset=28
            set_local 4
            br 2 (;@2;)
          end
          get_local 3
          i32.const 13
          i32.store offset=24
          get_local 1
          get_local 3
          i32.const 24
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 1
          get_local 0
          i32.const 1
          i32.store
          get_local 0
          get_local 1
          i32.store offset=4
          br 2 (;@1;)
        end
        get_local 3
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        tee_local 2
        get_local 3
        i32.const 40
        i32.add
        i64.load
        i64.store
        get_local 3
        get_local 3
        i64.load offset=32
        i64.store offset=8
        block  ;; label = @3
          get_local 3
          i32.load offset=4
          i32.eqz
          br_if 0 (;@3;)
          get_local 3
          i32.const 10
          i32.store offset=24
          get_local 1
          get_local 3
          i32.const 24
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 4
          get_local 3
          i32.const 8
          i32.add
          call $core::ptr::real_drop_in_place::h88bf5e1688a86f22
          i32.const 1
          set_local 2
          br 1 (;@2;)
        end
        get_local 3
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        get_local 2
        i64.load
        i64.store
        get_local 3
        get_local 3
        i64.load offset=8
        i64.store offset=24
        i32.const 0
        set_local 2
      end
      get_local 0
      get_local 4
      i32.store offset=4
      get_local 0
      get_local 2
      i32.store
      get_local 0
      i32.const 8
      i32.add
      get_local 3
      i64.load offset=24
      i64.store
      get_local 0
      i32.const 16
      i32.add
      get_local 3
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      i64.load
      i64.store
      get_local 1
      i32.const 24
      i32.add
      tee_local 1
      get_local 1
      i32.load8_u
      i32.const 1
      i32.add
      i32.store8
    end
    get_local 3
    i32.const 48
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::h88bf5e1688a86f22 (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 0
          i32.load8_u
          i32.const -2
          i32.add
          tee_local 1
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              get_local 1
              br_table 0 (;@5;) 1 (;@4;) 3 (;@2;) 4 (;@1;) 0 (;@5;)
            end
            get_local 0
            i32.const 4
            i32.add
            call $core::ptr::real_drop_in_place::he33a927f4ac61062
            return
          end
          get_local 0
          i32.const 4
          i32.add
          call $core::ptr::real_drop_in_place::he33a927f4ac61062
        end
        return
      end
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::h1e3b4a0c2771cc68
      return
    end
    get_local 0
    i32.const 4
    i32.add
    call $<alloc::collections::btree::map::BTreeMap<K, V> as core::ops::drop::Drop>::drop::h2a5dac4e76049b5f)
  (func $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_seq::he60efaa74a23e915 (type 10) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    get_global 0
    i32.const 80
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    i32.const 0
    i32.store offset=16
    get_local 3
    i64.const 8
    i64.store offset=8
    get_local 3
    i32.const 24
    i32.add
    i32.const 1
    i32.or
    set_local 4
    get_local 3
    i32.const 56
    i32.add
    i32.const 9
    i32.add
    set_local 5
    get_local 3
    i32.const 56
    i32.add
    i32.const 8
    i32.add
    set_local 6
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              get_local 2
              i32.load
              tee_local 7
              i32.eqz
              br_if 1 (;@4;)
              get_local 2
              get_local 7
              i32.const -1
              i32.add
              i32.store
              get_local 3
              i32.const 56
              i32.add
              get_local 1
              call $<serde_cbor::de::Deserializer<R>>::parse_value::h0681e0fbfcf892e9
              get_local 3
              i32.load offset=56
              i32.const 1
              i32.eq
              br_if 3 (;@2;)
              get_local 3
              get_local 5
              i64.load align=1
              i64.store offset=40
              get_local 3
              get_local 5
              i32.const 7
              i32.add
              i64.load align=1
              i64.store offset=47 align=1
              get_local 6
              i32.load8_u
              set_local 7
              get_local 4
              get_local 3
              i64.load offset=40
              i64.store align=1
              get_local 4
              i32.const 7
              i32.add
              get_local 3
              i64.load offset=47 align=1
              i64.store align=1
              get_local 3
              get_local 7
              i32.store8 offset=24
              get_local 7
              i32.const 9
              i32.eq
              br_if 2 (;@3;)
              get_local 6
              get_local 3
              i32.const 24
              i32.add
              i32.const 8
              i32.add
              i64.load
              i64.store
              get_local 3
              get_local 3
              i64.load offset=24
              i64.store offset=56
              get_local 3
              i32.const 8
              i32.add
              get_local 3
              i32.const 56
              i32.add
              call $<alloc::vec::Vec<T>>::push::h33892c1c180dc67a
              br 0 (;@5;)
            end
          end
          get_local 4
          get_local 3
          i64.load offset=40
          i64.store align=1
          get_local 4
          i32.const 7
          i32.add
          get_local 3
          i64.load offset=47 align=1
          i64.store align=1
          get_local 3
          i32.const 9
          i32.store8 offset=24
        end
        get_local 3
        i32.const 24
        i32.add
        call $core::ptr::real_drop_in_place::h4dbdb21fb8a398dc
        get_local 3
        i32.const 67
        i32.add
        get_local 3
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store align=1
        get_local 0
        i32.const 8
        i32.add
        i32.const 4
        i32.store8
        get_local 0
        i32.const 0
        i32.store
        get_local 3
        get_local 3
        i64.load offset=8
        i64.store offset=59 align=1
        get_local 0
        i32.const 9
        i32.add
        get_local 3
        i64.load offset=56 align=1
        i64.store align=1
        get_local 0
        i32.const 16
        i32.add
        get_local 3
        i32.const 63
        i32.add
        i64.load align=1
        i64.store align=1
        br 1 (;@1;)
      end
      get_local 3
      i32.load offset=60
      set_local 7
      get_local 0
      i32.const 1
      i32.store
      get_local 0
      get_local 7
      i32.store offset=4
      get_local 3
      i32.const 8
      i32.add
      call $core::ptr::real_drop_in_place::h1e3b4a0c2771cc68
    end
    get_local 3
    i32.const 80
    i32.add
    set_global 0)
  (func $<<serde_cbor::value::value::Value as serde::de::Deserialize<'de>>::deserialize::ValueVisitor as serde::de::Visitor<'de>>::visit_map::h6ca5f83bcfe498f1 (type 10) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    i32.const 192
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    i64.const 0
    i64.store offset=4 align=4
    get_local 3
    i32.const 1049348
    i32.store
    get_local 3
    i32.const 16
    i32.add
    i32.const 1
    i32.or
    set_local 4
    get_local 3
    i32.const 175
    i32.add
    set_local 5
    get_local 3
    i32.const 128
    i32.add
    i32.const 1
    i32.or
    set_local 6
    get_local 3
    i32.const 160
    i32.add
    i32.const 8
    i32.add
    set_local 7
    get_local 3
    i32.const 169
    i32.add
    set_local 8
    get_local 3
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    set_local 9
    get_local 3
    i32.const 96
    i32.add
    i32.const 1
    i32.or
    tee_local 10
    i32.const 7
    i32.add
    set_local 11
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    get_local 2
                    i32.load
                    tee_local 12
                    i32.eqz
                    br_if 0 (;@8;)
                    get_local 2
                    get_local 12
                    i32.const -1
                    i32.add
                    i32.store
                    get_local 3
                    i32.const 160
                    i32.add
                    get_local 1
                    call $<serde_cbor::de::Deserializer<R>>::parse_value::h1a918e0cae4b9718
                    get_local 3
                    i32.load offset=160
                    i32.const 1
                    i32.eq
                    br_if 4 (;@4;)
                    get_local 3
                    get_local 8
                    i64.load align=1
                    i64.store offset=112
                    get_local 3
                    get_local 8
                    i32.const 7
                    i32.add
                    i64.load align=1
                    i64.store offset=119 align=1
                    get_local 7
                    i32.load8_u
                    set_local 12
                    get_local 10
                    get_local 3
                    i64.load offset=112
                    i64.store align=1
                    get_local 11
                    get_local 3
                    i64.load offset=119 align=1
                    i64.store align=1
                    get_local 3
                    get_local 12
                    i32.store8 offset=96
                    get_local 12
                    i32.const 5
                    i32.eq
                    br_if 1 (;@7;)
                    get_local 3
                    i32.const 128
                    i32.add
                    i32.const 8
                    i32.add
                    get_local 3
                    i32.const 96
                    i32.add
                    i32.const 8
                    i32.add
                    i64.load
                    i64.store
                    get_local 3
                    get_local 3
                    i64.load offset=96
                    i64.store offset=128
                    get_local 3
                    i32.const 160
                    i32.add
                    get_local 1
                    call $<serde_cbor::de::Deserializer<R>>::parse_value::h0681e0fbfcf892e9
                    get_local 3
                    i32.load offset=160
                    i32.const 1
                    i32.eq
                    br_if 5 (;@3;)
                    get_local 3
                    i32.const 144
                    i32.add
                    i32.const 8
                    i32.add
                    tee_local 12
                    get_local 7
                    i32.const 8
                    i32.add
                    i64.load
                    i64.store
                    get_local 3
                    get_local 7
                    i64.load
                    i64.store offset=144
                    get_local 5
                    get_local 3
                    i64.load offset=144
                    i64.store align=1
                    get_local 5
                    i32.const 8
                    i32.add
                    get_local 12
                    i64.load
                    i64.store align=1
                    get_local 3
                    get_local 6
                    i32.const 7
                    i32.add
                    i64.load align=1
                    i64.store offset=167 align=1
                    get_local 3
                    i32.const 48
                    i32.add
                    i32.const 8
                    i32.add
                    get_local 7
                    i64.load
                    i64.store
                    get_local 3
                    i32.const 48
                    i32.add
                    i32.const 16
                    i32.add
                    get_local 3
                    i32.const 160
                    i32.add
                    i32.const 16
                    i32.add
                    i64.load
                    i64.store
                    get_local 3
                    i32.const 48
                    i32.add
                    i32.const 23
                    i32.add
                    get_local 3
                    i32.const 160
                    i32.add
                    i32.const 23
                    i32.add
                    i64.load align=1
                    i64.store align=1
                    get_local 3
                    get_local 6
                    i64.load align=1
                    i64.store offset=160
                    get_local 3
                    get_local 3
                    i64.load offset=160
                    i64.store offset=48
                    get_local 3
                    i32.load8_u offset=128
                    set_local 12
                    br 2 (;@6;)
                  end
                  get_local 10
                  get_local 3
                  i64.load offset=112
                  i64.store align=1
                  get_local 11
                  get_local 3
                  i64.load offset=119 align=1
                  i64.store align=1
                  get_local 3
                  i32.const 5
                  i32.store8 offset=96
                end
                get_local 3
                i32.const 96
                i32.add
                call $core::ptr::real_drop_in_place::h96dad90eb468759f
                i32.const 5
                set_local 12
              end
              get_local 4
              get_local 3
              i64.load offset=48
              i64.store align=1
              get_local 4
              i32.const 8
              i32.add
              get_local 3
              i32.const 48
              i32.add
              i32.const 8
              i32.add
              i64.load
              i64.store align=1
              get_local 4
              i32.const 16
              i32.add
              get_local 3
              i32.const 48
              i32.add
              i32.const 16
              i32.add
              i64.load
              i64.store align=1
              get_local 4
              i32.const 23
              i32.add
              get_local 3
              i32.const 48
              i32.add
              i32.const 23
              i32.add
              i64.load align=1
              i64.store align=1
              get_local 3
              get_local 12
              i32.store8 offset=16
              block  ;; label = @6
                get_local 12
                i32.const 255
                i32.and
                i32.const 5
                i32.eq
                br_if 0 (;@6;)
                get_local 3
                i32.const 144
                i32.add
                i32.const 8
                i32.add
                get_local 3
                i32.const 16
                i32.add
                i32.const 8
                i32.add
                i64.load
                i64.store
                get_local 3
                get_local 3
                i64.load offset=16
                i64.store offset=144
                get_local 7
                get_local 9
                i32.const 8
                i32.add
                i64.load
                i64.store
                get_local 3
                get_local 9
                i64.load
                i64.store offset=160
                get_local 3
                i32.const 80
                i32.add
                get_local 3
                get_local 3
                i32.const 144
                i32.add
                get_local 3
                i32.const 160
                i32.add
                call $<alloc::collections::btree::map::BTreeMap<K, V>>::insert::h3153c5f3f9ba0ab6
                get_local 3
                i32.const 80
                i32.add
                call $core::ptr::real_drop_in_place::h4dbdb21fb8a398dc
                br 1 (;@5;)
              end
            end
            get_local 3
            i32.const 16
            i32.add
            call $core::ptr::real_drop_in_place::hc824168576c4062a
            get_local 3
            i32.const 27
            i32.add
            get_local 3
            i32.const 8
            i32.add
            i32.load
            i32.store align=1
            get_local 0
            i32.const 8
            i32.add
            i32.const 5
            i32.store8
            get_local 0
            i32.const 0
            i32.store
            get_local 3
            get_local 3
            i64.load
            i64.store offset=19 align=1
            get_local 0
            i32.const 9
            i32.add
            get_local 3
            i64.load offset=16 align=1
            i64.store align=1
            get_local 0
            i32.const 16
            i32.add
            get_local 3
            i32.const 23
            i32.add
            i64.load align=1
            i64.store align=1
            br 3 (;@1;)
          end
          get_local 3
          i32.load offset=164
          set_local 4
          br 1 (;@2;)
        end
        get_local 3
        i32.load offset=164
        set_local 4
        get_local 3
        i32.const 128
        i32.add
        call $core::ptr::real_drop_in_place::h1ad607e1ed7b8ef7
      end
      get_local 0
      i32.const 1
      i32.store
      get_local 0
      get_local 4
      i32.store offset=4
      get_local 3
      call $<alloc::collections::btree::map::BTreeMap<K, V> as core::ops::drop::Drop>::drop::h2a5dac4e76049b5f
    end
    get_local 3
    i32.const 192
    i32.add
    set_global 0)
  (func $<serde_cbor::de::Deserializer<R>>::peek::h171a225e40f8e5a4 (type 5) (param i32 i32)
    (local i32 i32 i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    i32.const 0
    set_local 3
    block  ;; label = @1
      get_local 1
      i32.load offset=8
      tee_local 4
      get_local 1
      i32.load offset=4
      i32.ge_u
      br_if 0 (;@1;)
      get_local 1
      i32.load
      get_local 4
      i32.add
      i32.load8_u
      set_local 5
      i32.const 1
      set_local 3
    end
    get_local 2
    get_local 5
    i32.store8 offset=2
    get_local 2
    get_local 3
    i32.store8 offset=1
    get_local 2
    i32.const 0
    i32.store8
    get_local 0
    get_local 2
    call $<core::result::Result<T, E>>::map_err::h08448c9b9a302c6d
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::h96dad90eb468759f (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load8_u
      i32.const 5
      i32.eq
      br_if 0 (;@1;)
      get_local 0
      call $core::ptr::real_drop_in_place::h1ad607e1ed7b8ef7
    end)
  (func $<alloc::collections::btree::map::BTreeMap<K, V>>::insert::h3153c5f3f9ba0ab6 (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    i32.const 336
    i32.sub
    tee_local 4
    set_global 0
    get_local 4
    i32.const 136
    i32.add
    i32.const 8
    i32.add
    get_local 2
    i32.const 8
    i32.add
    i64.load
    i64.store
    get_local 4
    get_local 2
    i64.load
    i64.store offset=136
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.load
        tee_local 5
        i32.const 1049348
        i32.eq
        br_if 0 (;@2;)
        get_local 1
        i32.load offset=4
        set_local 6
        br 1 (;@1;)
      end
      i32.const 0
      set_local 6
      i32.const 360
      call $alloc::alloc::exchange_malloc::h850213703570f63e
      tee_local 5
      i32.const 0
      i32.store16 offset=6
      get_local 5
      i32.const 0
      i32.store
      get_local 1
      i32.const 0
      i32.store offset=4
      get_local 1
      get_local 5
      i32.store
    end
    get_local 4
    i32.const 136
    i32.add
    i32.const 4
    i32.or
    set_local 7
    get_local 4
    i32.const 136
    i32.add
    i32.const 8
    i32.add
    i64.load
    set_local 8
    get_local 4
    i32.load8_u offset=136
    tee_local 9
    i32.const 3
    i32.gt_u
    set_local 10
    get_local 4
    i32.load8_u offset=137
    i32.const 255
    i32.and
    set_local 11
    i32.const 0
    set_local 2
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    get_local 2
                    br_table 0 (;@8;) 1 (;@7;) 1 (;@7;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      get_local 5
                      i32.const 1049348
                      i32.eq
                      tee_local 12
                      br_if 0 (;@9;)
                      get_local 5
                      i32.const 8
                      i32.add
                      set_local 13
                      get_local 5
                      i32.load16_u offset=6
                      set_local 2
                      br 1 (;@8;)
                    end
                    i32.const 1051504
                    set_local 13
                    i32.const 0
                    set_local 2
                  end
                  get_local 2
                  i32.const 4
                  i32.shl
                  set_local 14
                  i32.const 0
                  set_local 2
                  i32.const -1
                  set_local 15
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              get_local 14
                              get_local 2
                              i32.eq
                              br_if 1 (;@12;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  get_local 9
                                  get_local 13
                                  get_local 2
                                  i32.add
                                  tee_local 16
                                  i32.load8_u
                                  tee_local 17
                                  i32.ne
                                  br_if 0 (;@15;)
                                  get_local 10
                                  br_if 6 (;@9;)
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          get_local 9
                                          br_table 3 (;@16;) 0 (;@19;) 1 (;@18;) 2 (;@17;) 3 (;@16;)
                                        end
                                        get_local 7
                                        get_local 16
                                        i32.const 4
                                        i32.add
                                        call $<alloc::vec::Vec<T> as core::cmp::Ord>::cmp::h0e8817cbc8c0fa93
                                        set_local 17
                                        br 4 (;@14;)
                                      end
                                      get_local 7
                                      get_local 16
                                      i32.const 4
                                      i32.add
                                      call $<alloc::vec::Vec<T> as core::cmp::Ord>::cmp::h0e8817cbc8c0fa93
                                      set_local 17
                                      br 3 (;@14;)
                                    end
                                    i32.const 0
                                    i32.const -1
                                    i32.const 1
                                    get_local 11
                                    get_local 16
                                    i32.const 1
                                    i32.add
                                    i32.load8_u
                                    tee_local 17
                                    i32.lt_u
                                    select
                                    get_local 11
                                    get_local 17
                                    i32.eq
                                    select
                                    set_local 17
                                    br 2 (;@14;)
                                  end
                                  i32.const 0
                                  i32.const -1
                                  i32.const 1
                                  get_local 8
                                  get_local 16
                                  i32.const 8
                                  i32.add
                                  i64.load
                                  tee_local 18
                                  i64.lt_s
                                  select
                                  get_local 8
                                  get_local 18
                                  i64.eq
                                  select
                                  set_local 17
                                  br 1 (;@14;)
                                end
                                i32.const -1
                                i32.const 1
                                get_local 9
                                get_local 17
                                i32.lt_u
                                select
                                set_local 17
                              end
                              get_local 17
                              i32.const 255
                              i32.and
                              i32.eqz
                              br_if 4 (;@9;)
                              get_local 15
                              i32.const 1
                              i32.add
                              set_local 15
                              get_local 2
                              i32.const 16
                              i32.add
                              set_local 2
                              get_local 17
                              i32.const 24
                              i32.shl
                              i32.const 24
                              i32.shr_s
                              i32.const 1
                              i32.eq
                              br_if 0 (;@13;)
                            end
                            get_local 6
                            i32.eqz
                            br_if 2 (;@10;)
                            br 1 (;@11;)
                          end
                          block  ;; label = @12
                            get_local 12
                            br_if 0 (;@12;)
                            get_local 5
                            i32.load16_u offset=6
                            set_local 15
                            get_local 6
                            br_if 1 (;@11;)
                            br 2 (;@10;)
                          end
                          i32.const 0
                          set_local 15
                          get_local 6
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        get_local 6
                        i32.const -1
                        i32.add
                        set_local 6
                        get_local 5
                        get_local 15
                        i32.const 2
                        i32.shl
                        i32.add
                        i32.const 360
                        i32.add
                        i32.load
                        set_local 5
                        br 5 (;@5;)
                      end
                      get_local 4
                      i32.const 48
                      i32.add
                      get_local 1
                      i32.const 8
                      i32.add
                      i32.store
                      get_local 4
                      i32.const 44
                      i32.add
                      get_local 15
                      i32.store
                      get_local 4
                      i32.const 40
                      i32.add
                      tee_local 17
                      get_local 1
                      i32.store
                      get_local 4
                      i32.const 36
                      i32.add
                      get_local 5
                      i32.store
                      get_local 4
                      i32.const 8
                      i32.add
                      i32.const 24
                      i32.add
                      tee_local 19
                      i32.const 0
                      i32.store
                      get_local 4
                      i32.const 8
                      i32.add
                      i32.const 16
                      i32.add
                      tee_local 2
                      get_local 4
                      i32.const 136
                      i32.add
                      i32.const 8
                      i32.add
                      tee_local 15
                      i64.load
                      i64.store
                      get_local 4
                      get_local 4
                      i64.load offset=136
                      i64.store offset=16
                      get_local 4
                      i32.const 0
                      i32.store offset=8
                      get_local 4
                      i32.const 56
                      i32.add
                      i32.const 24
                      i32.add
                      tee_local 20
                      get_local 17
                      i64.load
                      i64.store
                      get_local 4
                      i32.const 56
                      i32.add
                      i32.const 16
                      i32.add
                      tee_local 17
                      get_local 19
                      i64.load
                      i64.store
                      get_local 4
                      i32.const 56
                      i32.add
                      i32.const 8
                      i32.add
                      get_local 2
                      i64.load
                      i64.store
                      get_local 1
                      get_local 1
                      i32.load offset=8
                      i32.const 1
                      i32.add
                      i32.store offset=8
                      get_local 4
                      get_local 4
                      i64.load offset=16
                      i64.store offset=56
                      get_local 4
                      i32.const 208
                      i32.add
                      i32.const 8
                      i32.add
                      get_local 20
                      i64.load
                      i64.store
                      get_local 4
                      get_local 17
                      i64.load
                      i64.store offset=208
                      get_local 4
                      i32.const 224
                      i32.add
                      i32.const 8
                      i32.add
                      tee_local 17
                      get_local 2
                      i64.load
                      i64.store
                      get_local 4
                      get_local 4
                      i64.load offset=16
                      i64.store offset=224
                      get_local 4
                      i32.const 240
                      i32.add
                      i32.const 8
                      i32.add
                      tee_local 2
                      get_local 3
                      i32.const 8
                      i32.add
                      i64.load
                      i64.store
                      get_local 4
                      get_local 3
                      i64.load
                      i64.store offset=240
                      get_local 4
                      i32.load offset=212
                      tee_local 21
                      i32.load16_u offset=6
                      i32.const 11
                      i32.ge_u
                      br_if 1 (;@8;)
                      get_local 4
                      i32.const 272
                      i32.add
                      i32.const 8
                      i32.add
                      get_local 17
                      i64.load
                      i64.store
                      get_local 4
                      get_local 4
                      i64.load offset=224
                      i64.store offset=272
                      get_local 15
                      get_local 2
                      i64.load
                      i64.store
                      get_local 4
                      get_local 4
                      i64.load offset=240
                      i64.store offset=136
                      get_local 4
                      i32.const 208
                      i32.add
                      get_local 4
                      i32.const 272
                      i32.add
                      get_local 4
                      i32.const 136
                      i32.add
                      call $<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Mut<'a>, K, V, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>::insert_fit::hb8d8e535042f9d33
                      drop
                      br 3 (;@6;)
                    end
                    get_local 4
                    i32.const 28
                    i32.add
                    get_local 1
                    i32.const 8
                    i32.add
                    i32.store
                    get_local 4
                    i32.const 24
                    i32.add
                    get_local 15
                    i32.const 1
                    i32.add
                    i32.store
                    get_local 4
                    i32.const 20
                    i32.add
                    get_local 1
                    i32.store
                    get_local 4
                    get_local 6
                    i32.store offset=12
                    get_local 4
                    get_local 5
                    i32.store offset=16
                    get_local 4
                    i32.const 136
                    i32.add
                    call $core::ptr::real_drop_in_place::h5f29357962130283
                    get_local 4
                    i32.const 1
                    i32.store offset=8
                    get_local 4
                    i32.const 272
                    i32.add
                    i32.const 8
                    i32.add
                    tee_local 15
                    get_local 3
                    i32.const 8
                    i32.add
                    i64.load
                    i64.store
                    get_local 4
                    get_local 3
                    i64.load
                    i64.store offset=272
                    get_local 4
                    i32.const 136
                    i32.add
                    i32.const 8
                    i32.add
                    tee_local 17
                    get_local 5
                    get_local 2
                    i32.add
                    tee_local 2
                    i32.const 192
                    i32.add
                    tee_local 19
                    i64.load
                    i64.store
                    get_local 4
                    get_local 2
                    i32.const 184
                    i32.add
                    tee_local 2
                    i64.load
                    i64.store offset=136
                    get_local 19
                    get_local 15
                    i64.load
                    i64.store
                    get_local 2
                    get_local 4
                    i64.load offset=272
                    i64.store
                    get_local 0
                    get_local 4
                    i64.load offset=136
                    i64.store
                    get_local 0
                    i32.const 8
                    i32.add
                    get_local 17
                    i64.load
                    i64.store
                    get_local 4
                    i32.load offset=8
                    br_if 7 (;@1;)
                    get_local 4
                    i32.const 8
                    i32.add
                    i32.const 8
                    i32.add
                    call $core::ptr::real_drop_in_place::h5f29357962130283
                    br 7 (;@1;)
                  end
                  get_local 4
                  i32.load offset=216
                  set_local 22
                  get_local 4
                  i32.load offset=208
                  set_local 19
                  i32.const 360
                  call $alloc::alloc::exchange_malloc::h850213703570f63e
                  tee_local 2
                  i32.const 0
                  i32.store16 offset=6
                  get_local 2
                  i32.const 0
                  i32.store
                  get_local 15
                  i32.const 1051504
                  get_local 21
                  i32.const 8
                  i32.add
                  get_local 21
                  i32.const 1049348
                  i32.eq
                  select
                  tee_local 17
                  i32.const 104
                  i32.add
                  i64.load
                  i64.store
                  get_local 4
                  get_local 17
                  i64.load offset=96
                  i64.store offset=136
                  get_local 4
                  i32.const 272
                  i32.add
                  i32.const 8
                  i32.add
                  tee_local 20
                  get_local 21
                  i32.const 288
                  i32.add
                  i64.load
                  i64.store
                  get_local 4
                  get_local 21
                  i64.load offset=280
                  i64.store offset=272
                  get_local 2
                  i32.const 8
                  i32.add
                  get_local 17
                  i32.const 112
                  i32.add
                  get_local 21
                  i32.const 6
                  i32.add
                  tee_local 17
                  i32.load16_u
                  i32.const -7
                  i32.add
                  tee_local 14
                  i32.const 4
                  i32.shl
                  tee_local 23
                  call $memcpy
                  drop
                  get_local 2
                  i32.const 184
                  i32.add
                  get_local 21
                  i32.const 296
                  i32.add
                  get_local 23
                  call $memcpy
                  drop
                  get_local 17
                  i32.const 6
                  i32.store16
                  get_local 2
                  get_local 14
                  i32.store16 offset=6
                  get_local 4
                  i32.const 136
                  i32.add
                  i32.const 24
                  i32.add
                  tee_local 17
                  get_local 20
                  i64.load
                  i64.store
                  get_local 4
                  get_local 4
                  i64.load offset=272
                  i64.store offset=152
                  get_local 4
                  i32.const 256
                  i32.add
                  i32.const 8
                  i32.add
                  get_local 15
                  i64.load
                  i64.store
                  get_local 4
                  get_local 4
                  i64.load offset=136
                  i64.store offset=256
                  get_local 4
                  i32.const 304
                  i32.add
                  i32.const 8
                  i32.add
                  get_local 17
                  i64.load
                  i64.store
                  get_local 4
                  get_local 4
                  i64.load offset=152
                  i64.store offset=304
                  get_local 4
                  i32.const 0
                  i32.store offset=108
                  get_local 4
                  get_local 2
                  i32.store offset=104
                  block  ;; label = @8
                    block  ;; label = @9
                      get_local 4
                      i32.load offset=220
                      tee_local 15
                      i32.const 6
                      i32.gt_u
                      br_if 0 (;@9;)
                      get_local 4
                      get_local 15
                      i32.store offset=332
                      get_local 4
                      get_local 22
                      i32.store offset=328
                      get_local 4
                      get_local 21
                      i32.store offset=324
                      get_local 4
                      get_local 19
                      i32.store offset=320
                      get_local 4
                      i32.const 272
                      i32.add
                      i32.const 8
                      i32.add
                      get_local 4
                      i32.const 224
                      i32.add
                      i32.const 8
                      i32.add
                      i64.load
                      i64.store
                      get_local 4
                      get_local 4
                      i64.load offset=224
                      i64.store offset=272
                      get_local 4
                      i32.const 136
                      i32.add
                      i32.const 8
                      i32.add
                      get_local 4
                      i32.const 240
                      i32.add
                      i32.const 8
                      i32.add
                      i64.load
                      i64.store
                      get_local 4
                      get_local 4
                      i64.load offset=240
                      i64.store offset=136
                      get_local 4
                      i32.const 320
                      i32.add
                      get_local 4
                      i32.const 272
                      i32.add
                      get_local 4
                      i32.const 136
                      i32.add
                      call $<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Mut<'a>, K, V, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>::insert_fit::hb8d8e535042f9d33
                      drop
                      br 1 (;@8;)
                    end
                    get_local 4
                    get_local 2
                    i32.store offset=324
                    get_local 4
                    i32.const 0
                    i32.store offset=320
                    get_local 4
                    get_local 15
                    i32.const -7
                    i32.add
                    i32.store offset=332
                    get_local 4
                    get_local 4
                    i32.const 104
                    i32.add
                    i32.store offset=328
                    get_local 4
                    i32.const 272
                    i32.add
                    i32.const 8
                    i32.add
                    get_local 4
                    i32.const 224
                    i32.add
                    i32.const 8
                    i32.add
                    i64.load
                    i64.store
                    get_local 4
                    get_local 4
                    i64.load offset=224
                    i64.store offset=272
                    get_local 4
                    i32.const 136
                    i32.add
                    i32.const 8
                    i32.add
                    get_local 4
                    i32.const 240
                    i32.add
                    i32.const 8
                    i32.add
                    i64.load
                    i64.store
                    get_local 4
                    get_local 4
                    i64.load offset=240
                    i64.store offset=136
                    get_local 4
                    i32.const 320
                    i32.add
                    get_local 4
                    i32.const 272
                    i32.add
                    get_local 4
                    i32.const 136
                    i32.add
                    call $<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Mut<'a>, K, V, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>::insert_fit::hb8d8e535042f9d33
                    drop
                  end
                  i32.const 8
                  set_local 24
                  get_local 4
                  i32.const 192
                  i32.add
                  i32.const 8
                  i32.add
                  tee_local 25
                  get_local 4
                  i32.const 256
                  i32.add
                  i32.const 8
                  i32.add
                  tee_local 26
                  i64.load
                  i64.store
                  get_local 4
                  i32.const 120
                  i32.add
                  i32.const 8
                  i32.add
                  tee_local 2
                  get_local 4
                  i32.const 304
                  i32.add
                  i32.const 8
                  i32.add
                  tee_local 27
                  i64.load
                  i64.store
                  get_local 4
                  get_local 4
                  i64.load offset=256
                  i64.store offset=192
                  get_local 4
                  get_local 4
                  i64.load offset=304
                  i64.store offset=120
                  get_local 4
                  i32.load offset=104
                  set_local 28
                  get_local 4
                  i32.const 88
                  i32.add
                  i32.const 8
                  i32.add
                  tee_local 29
                  get_local 25
                  i64.load
                  i64.store
                  get_local 4
                  i32.const 104
                  i32.add
                  i32.const 8
                  i32.add
                  tee_local 30
                  get_local 2
                  i64.load
                  i64.store
                  get_local 4
                  get_local 4
                  i64.load offset=192
                  i64.store offset=88
                  get_local 4
                  get_local 4
                  i64.load offset=120
                  i64.store offset=104
                  i32.const 1
                  set_local 20
                  block  ;; label = @8
                    block  ;; label = @9
                      get_local 21
                      i32.load
                      tee_local 2
                      i32.eqz
                      br_if 0 (;@9;)
                      get_local 19
                      i32.const 1
                      i32.add
                      set_local 31
                      get_local 21
                      i32.load16_u offset=4
                      set_local 32
                      i32.const 0
                      set_local 19
                      get_local 2
                      set_local 21
                      br 1 (;@8;)
                    end
                    get_local 22
                    set_local 31
                    i32.const 1
                    set_local 19
                  end
                  i32.const 4
                  set_local 23
                  get_local 4
                  i32.const 136
                  i32.add
                  i32.const 4
                  i32.or
                  set_local 33
                  i32.const 16
                  set_local 34
                  get_local 4
                  i32.const 272
                  i32.add
                  i32.const 16
                  i32.add
                  set_local 35
                  get_local 4
                  i32.const 176
                  i32.add
                  set_local 36
                  get_local 4
                  i32.const 160
                  i32.add
                  set_local 37
                  i32.const 12
                  set_local 38
                  get_local 4
                  i32.const 192
                  i32.add
                  i32.const 12
                  i32.add
                  set_local 39
                  i32.const 11
                  set_local 40
                  i32.const 408
                  set_local 41
                  i32.const 1049348
                  set_local 42
                  i32.const 1051504
                  set_local 43
                  i32.const 104
                  set_local 44
                  i32.const 288
                  set_local 45
                  i32.const 112
                  set_local 46
                  i32.const -7
                  set_local 47
                  i32.const 296
                  set_local 48
                  i32.const 184
                  set_local 49
                  i32.const 388
                  set_local 50
                  i32.const 360
                  set_local 51
                  i32.const -6
                  set_local 52
                  i32.const 2
                  set_local 53
                  i32.const 6
                  set_local 54
                  get_local 4
                  i32.const 156
                  i32.add
                  set_local 55
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    get_local 19
                    get_local 20
                    i32.eq
                    br_if 0 (;@8;)
                    get_local 39
                    get_local 32
                    i32.store
                    get_local 25
                    get_local 22
                    i32.store
                    get_local 4
                    get_local 31
                    i32.store offset=192
                    get_local 4
                    get_local 21
                    i32.store offset=196
                    get_local 4
                    i32.const 208
                    i32.add
                    get_local 24
                    i32.add
                    tee_local 16
                    get_local 29
                    i64.load
                    i64.store
                    get_local 4
                    get_local 4
                    i64.load offset=88
                    i64.store offset=208
                    get_local 4
                    i32.const 224
                    i32.add
                    get_local 24
                    i32.add
                    tee_local 12
                    get_local 30
                    i64.load
                    i64.store
                    get_local 4
                    get_local 4
                    i64.load offset=104
                    i64.store offset=224
                    get_local 21
                    i32.load16_u offset=6
                    get_local 40
                    i32.lt_u
                    br_if 1 (;@7;)
                    i32.const 0
                    set_local 2
                    get_local 41
                    call $alloc::alloc::exchange_malloc::h850213703570f63e
                    tee_local 19
                    i32.const 0
                    i32.store16 offset=6
                    get_local 19
                    i32.const 0
                    i32.store
                    get_local 27
                    get_local 43
                    get_local 21
                    get_local 24
                    i32.add
                    get_local 21
                    get_local 42
                    i32.eq
                    select
                    tee_local 15
                    get_local 44
                    i32.add
                    i64.load
                    i64.store
                    get_local 4
                    get_local 15
                    i64.load offset=96
                    i64.store offset=304
                    get_local 4
                    i32.const 320
                    i32.add
                    get_local 24
                    i32.add
                    tee_local 13
                    get_local 21
                    get_local 45
                    i32.add
                    i64.load
                    i64.store
                    get_local 4
                    get_local 21
                    i64.load offset=280
                    i64.store offset=320
                    get_local 19
                    get_local 24
                    i32.add
                    get_local 15
                    get_local 46
                    i32.add
                    get_local 21
                    i32.load16_u offset=6
                    tee_local 17
                    get_local 47
                    i32.add
                    tee_local 56
                    get_local 23
                    i32.shl
                    tee_local 15
                    call $memcpy
                    drop
                    get_local 19
                    get_local 49
                    i32.add
                    get_local 21
                    get_local 48
                    i32.add
                    get_local 15
                    call $memcpy
                    drop
                    get_local 19
                    get_local 51
                    i32.add
                    tee_local 15
                    get_local 21
                    get_local 50
                    i32.add
                    get_local 17
                    get_local 52
                    i32.add
                    tee_local 14
                    get_local 53
                    i32.shl
                    call $memcpy
                    drop
                    get_local 21
                    get_local 54
                    i32.store16 offset=6
                    get_local 19
                    get_local 56
                    i32.store16 offset=6
                    block  ;; label = @9
                      loop  ;; label = @10
                        get_local 14
                        get_local 2
                        i32.eq
                        br_if 1 (;@9;)
                        get_local 15
                        i32.load
                        tee_local 17
                        get_local 2
                        i32.store16 offset=4
                        get_local 17
                        get_local 19
                        i32.store
                        get_local 15
                        get_local 23
                        i32.add
                        set_local 15
                        get_local 2
                        get_local 20
                        i32.add
                        set_local 2
                        br 0 (;@10;)
                      end
                    end
                    get_local 35
                    get_local 4
                    i64.load offset=320
                    i64.store
                    get_local 4
                    i32.const 272
                    i32.add
                    get_local 24
                    i32.add
                    tee_local 2
                    get_local 27
                    i64.load
                    i64.store
                    get_local 35
                    get_local 24
                    i32.add
                    tee_local 15
                    get_local 13
                    i64.load
                    i64.store
                    get_local 4
                    get_local 4
                    i64.load offset=304
                    i64.store offset=272
                    get_local 4
                    i32.const 240
                    i32.add
                    get_local 24
                    i32.add
                    tee_local 17
                    get_local 2
                    i64.load
                    i64.store
                    get_local 4
                    get_local 4
                    i64.load offset=272
                    i64.store offset=240
                    get_local 26
                    get_local 15
                    i64.load
                    i64.store
                    get_local 4
                    get_local 35
                    i64.load
                    i64.store offset=256
                    get_local 4
                    get_local 31
                    i32.store offset=124
                    get_local 4
                    get_local 19
                    i32.store offset=120
                    block  ;; label = @9
                      block  ;; label = @10
                        get_local 32
                        get_local 54
                        i32.gt_u
                        br_if 0 (;@10;)
                        get_local 4
                        i32.const 304
                        i32.add
                        get_local 38
                        i32.add
                        get_local 32
                        i32.store
                        get_local 27
                        get_local 22
                        i32.store
                        get_local 4
                        get_local 21
                        i32.store offset=308
                        get_local 4
                        get_local 31
                        i32.store offset=304
                        get_local 13
                        get_local 16
                        i64.load
                        i64.store
                        get_local 4
                        get_local 4
                        i64.load offset=208
                        i64.store offset=320
                        get_local 2
                        get_local 12
                        i64.load
                        i64.store
                        get_local 4
                        get_local 4
                        i64.load offset=224
                        i64.store offset=272
                        get_local 4
                        i32.const 304
                        i32.add
                        get_local 4
                        i32.const 320
                        i32.add
                        get_local 4
                        i32.const 272
                        i32.add
                        get_local 28
                        call $<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Mut<'a>, K, V, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::insert_fit::h3e5f55c9ad95f60d
                        br 1 (;@9;)
                      end
                      get_local 4
                      i32.const 304
                      i32.add
                      get_local 38
                      i32.add
                      get_local 32
                      get_local 47
                      i32.add
                      i32.store
                      get_local 4
                      get_local 19
                      i32.store offset=308
                      get_local 4
                      get_local 31
                      i32.store offset=304
                      get_local 27
                      get_local 4
                      i32.const 120
                      i32.add
                      i32.store
                      get_local 13
                      get_local 16
                      i64.load
                      i64.store
                      get_local 4
                      get_local 4
                      i64.load offset=208
                      i64.store offset=320
                      get_local 2
                      get_local 12
                      i64.load
                      i64.store
                      get_local 4
                      get_local 4
                      i64.load offset=224
                      i64.store offset=272
                      get_local 4
                      i32.const 304
                      i32.add
                      get_local 4
                      i32.const 320
                      i32.add
                      get_local 4
                      i32.const 272
                      i32.add
                      get_local 28
                      call $<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Mut<'a>, K, V, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::insert_fit::h3e5f55c9ad95f60d
                    end
                    get_local 37
                    get_local 4
                    i64.load offset=240
                    i64.store
                    get_local 36
                    get_local 4
                    i64.load offset=256
                    i64.store
                    get_local 4
                    i32.const 136
                    i32.add
                    get_local 38
                    i32.add
                    tee_local 2
                    get_local 22
                    i32.store
                    get_local 4
                    i32.const 136
                    i32.add
                    get_local 24
                    i32.add
                    tee_local 15
                    get_local 21
                    i32.store
                    get_local 55
                    get_local 4
                    i32.load offset=124
                    i32.store
                    get_local 4
                    i32.const 136
                    i32.add
                    get_local 34
                    i32.add
                    get_local 4
                    i32.load offset=120
                    tee_local 28
                    i32.store
                    get_local 37
                    get_local 24
                    i32.add
                    tee_local 14
                    get_local 17
                    i64.load
                    i64.store
                    get_local 36
                    get_local 24
                    i32.add
                    tee_local 17
                    get_local 26
                    i64.load
                    i64.store
                    get_local 4
                    get_local 31
                    i32.store offset=140
                    i32.const 1
                    set_local 19
                    get_local 4
                    i32.const 1
                    i32.store offset=136
                    get_local 29
                    get_local 14
                    i64.load
                    i64.store
                    get_local 30
                    get_local 17
                    i64.load
                    i64.store
                    get_local 4
                    get_local 37
                    i64.load
                    i64.store offset=88
                    get_local 4
                    get_local 36
                    i64.load
                    i64.store offset=104
                    get_local 2
                    i32.load
                    set_local 2
                    block  ;; label = @9
                      get_local 15
                      i32.load
                      tee_local 15
                      i32.load
                      tee_local 17
                      i32.eqz
                      br_if 0 (;@9;)
                      get_local 4
                      i32.load offset=140
                      get_local 20
                      i32.add
                      set_local 31
                      get_local 15
                      i32.load16_u offset=4
                      set_local 32
                      i32.const 0
                      set_local 19
                      get_local 17
                      set_local 21
                      get_local 2
                      set_local 22
                      br 6 (;@3;)
                    end
                    get_local 2
                    set_local 31
                    i32.const 1
                    set_local 2
                    br 6 (;@2;)
                  end
                  i32.const 408
                  call $alloc::alloc::exchange_malloc::h850213703570f63e
                  tee_local 2
                  i32.const 0
                  i32.store16 offset=6
                  get_local 2
                  i32.const 0
                  i32.store
                  get_local 2
                  get_local 31
                  i32.load
                  tee_local 15
                  i32.store offset=360
                  get_local 31
                  get_local 2
                  i32.store
                  get_local 31
                  get_local 31
                  i32.load offset=4
                  i32.const 1
                  i32.add
                  i32.store offset=4
                  get_local 15
                  i32.const 0
                  i32.store16 offset=4
                  get_local 15
                  get_local 2
                  i32.store
                  get_local 4
                  i32.const 272
                  i32.add
                  i32.const 8
                  i32.add
                  tee_local 17
                  get_local 4
                  i32.const 88
                  i32.add
                  i32.const 8
                  i32.add
                  i64.load
                  i64.store
                  get_local 4
                  get_local 4
                  i64.load offset=88
                  i64.store offset=272
                  get_local 2
                  get_local 2
                  i32.load16_u offset=6
                  tee_local 19
                  i32.const 4
                  i32.shl
                  i32.add
                  tee_local 15
                  i32.const 8
                  i32.add
                  get_local 4
                  i64.load offset=272
                  i64.store
                  get_local 15
                  i32.const 16
                  i32.add
                  get_local 17
                  i64.load
                  i64.store
                  get_local 15
                  i32.const 192
                  i32.add
                  get_local 4
                  i32.const 104
                  i32.add
                  i32.const 8
                  i32.add
                  i64.load
                  tee_local 8
                  i64.store
                  get_local 15
                  i32.const 184
                  i32.add
                  get_local 4
                  i64.load offset=104
                  tee_local 18
                  i64.store
                  get_local 2
                  i32.const 360
                  i32.add
                  get_local 19
                  i32.const 1
                  i32.add
                  tee_local 15
                  i32.const 2
                  i32.shl
                  i32.add
                  get_local 28
                  i32.store
                  get_local 2
                  get_local 2
                  i32.load16_u offset=6
                  i32.const 1
                  i32.add
                  i32.store16 offset=6
                  get_local 4
                  i32.const 136
                  i32.add
                  i32.const 8
                  i32.add
                  get_local 8
                  i64.store
                  get_local 28
                  get_local 15
                  i32.store16 offset=4
                  get_local 28
                  get_local 2
                  i32.store
                  get_local 4
                  get_local 18
                  i64.store offset=136
                  br 1 (;@6;)
                end
                get_local 4
                i32.const 320
                i32.add
                i32.const 8
                i32.add
                get_local 4
                i32.const 208
                i32.add
                i32.const 8
                i32.add
                i64.load
                i64.store
                get_local 4
                get_local 4
                i64.load offset=208
                i64.store offset=320
                get_local 4
                i32.const 272
                i32.add
                i32.const 8
                i32.add
                get_local 4
                i32.const 224
                i32.add
                i32.const 8
                i32.add
                i64.load
                i64.store
                get_local 4
                get_local 4
                i64.load offset=224
                i64.store offset=272
                get_local 4
                i32.const 192
                i32.add
                get_local 4
                i32.const 320
                i32.add
                get_local 4
                i32.const 272
                i32.add
                get_local 28
                call $<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Mut<'a>, K, V, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::insert_fit::h3e5f55c9ad95f60d
                get_local 4
                i32.const 152
                i32.add
                get_local 32
                i32.store
                get_local 33
                i32.const 8
                i32.add
                get_local 4
                i32.const 192
                i32.add
                i32.const 8
                i32.add
                i32.load
                i32.store
                get_local 33
                get_local 4
                i64.load offset=192
                i64.store align=4
                get_local 4
                i32.const 0
                i32.store offset=136
              end
              get_local 0
              i32.const 9
              i32.store8
              br 4 (;@1;)
            end
            i32.const 0
            set_local 2
            br 2 (;@2;)
          end
          i32.const 1
          set_local 2
          br 1 (;@2;)
        end
        i32.const 1
        set_local 2
        br 0 (;@2;)
      end
    end
    get_local 4
    i32.const 336
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::h4dbdb21fb8a398dc (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load8_u
      i32.const 9
      i32.eq
      br_if 0 (;@1;)
      get_local 0
      call $core::ptr::real_drop_in_place::h88bf5e1688a86f22
    end)
  (func $core::ptr::real_drop_in_place::hc824168576c4062a (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load8_u
      i32.const 5
      i32.eq
      br_if 0 (;@1;)
      get_local 0
      call $core::ptr::real_drop_in_place::h1ad607e1ed7b8ef7
      get_local 0
      i32.const 16
      i32.add
      call $core::ptr::real_drop_in_place::h88bf5e1688a86f22
    end)
  (func $core::ptr::real_drop_in_place::h1e3b4a0c2771cc68 (type 0) (param i32)
    get_local 0
    call $<alloc::vec::Vec<T> as core::ops::drop::Drop>::drop::he243ea68cc50daf9
    get_local 0
    call $<alloc::raw_vec::RawVec<T, A>>::dealloc_buffer::h2080339648c8451d)
  (func $<alloc::vec::Vec<T>>::push::h33892c1c180dc67a (type 5) (param i32 i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      get_local 0
      i32.load offset=8
      tee_local 2
      get_local 0
      i32.load offset=4
      i32.ne
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          get_local 2
          i32.const 1
          i32.add
          tee_local 3
          get_local 2
          i32.lt_u
          br_if 0 (;@3;)
          get_local 2
          i32.const 1
          i32.shl
          tee_local 4
          get_local 3
          get_local 3
          get_local 4
          i32.lt_u
          select
          tee_local 3
          i64.extend_u/i32
          i64.const 4
          i64.shl
          tee_local 5
          i64.const 32
          i64.shr_u
          i32.wrap/i64
          br_if 0 (;@3;)
          get_local 5
          i32.wrap/i64
          tee_local 4
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              get_local 2
              i32.eqz
              br_if 0 (;@5;)
              get_local 0
              i32.load
              get_local 2
              i32.const 4
              i32.shl
              i32.const 8
              get_local 4
              call $__rust_realloc
              tee_local 2
              i32.eqz
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            get_local 4
            i32.const 8
            call $__rust_alloc
            tee_local 2
            br_if 2 (;@2;)
          end
          unreachable
          unreachable
        end
        call $alloc::raw_vec::capacity_overflow::h1723897ee1c75c11
        unreachable
      end
      get_local 0
      get_local 2
      i32.store
      get_local 0
      i32.const 4
      i32.add
      get_local 3
      i32.store
      get_local 0
      i32.const 8
      i32.add
      i32.load
      set_local 2
    end
    get_local 0
    i32.load
    get_local 2
    i32.const 4
    i32.shl
    i32.add
    tee_local 2
    get_local 1
    i64.load
    i64.store
    get_local 2
    i32.const 8
    i32.add
    get_local 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    get_local 0
    i32.const 8
    i32.add
    tee_local 0
    get_local 0
    i32.load
    i32.const 1
    i32.add
    i32.store)
  (func $__rust_realloc (type 15) (param i32 i32 i32 i32) (result i32)
    get_local 0
    get_local 1
    get_local 2
    get_local 3
    call $__rg_realloc)
  (func $__rust_alloc (type 2) (param i32 i32) (result i32)
    get_local 0
    get_local 1
    call $__rg_alloc)
  (func $alloc::raw_vec::capacity_overflow::h1723897ee1c75c11 (type 7)
    i32.const 1057588
    call $core::panicking::panic::h120f75380e215ba4
    unreachable)
  (func $serde_cbor::de::from_slice::hd2b118eb70708e78 (type 10) (param i32 i32 i32)
    (local i32 i64)
    get_global 0
    i32.const 96
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    get_local 3
    i32.const 128
    i32.store8 offset=32
    get_local 3
    i64.const 4294967296
    i64.store offset=16
    get_local 3
    get_local 2
    i32.store offset=12
    get_local 3
    get_local 1
    i32.store offset=8
    get_local 3
    i32.const 56
    i32.add
    get_local 3
    i32.const 8
    i32.add
    call $<serde_cbor::de::Deserializer<R>>::parse_value::h0681e0fbfcf892e9
    get_local 3
    i32.const 20
    i32.add
    set_local 1
    block  ;; label = @1
      block  ;; label = @2
        get_local 3
        i32.load offset=56
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        get_local 0
        get_local 3
        i32.load offset=60
        i32.store offset=4
        get_local 0
        i32.const 1
        i32.store
        br 1 (;@1;)
      end
      get_local 3
      i32.const 48
      i32.add
      get_local 3
      i32.const 56
      i32.add
      i32.const 16
      i32.add
      i64.load
      i64.store
      get_local 3
      get_local 3
      i64.load offset=64
      i64.store offset=40
      get_local 3
      i32.const 56
      i32.add
      get_local 3
      i32.const 8
      i32.add
      call $<serde_cbor::de::Deserializer<R>>::next::h6e15d341856c98a1
      get_local 3
      get_local 3
      i64.load offset=56
      tee_local 4
      i64.store offset=88
      block  ;; label = @2
        block  ;; label = @3
          get_local 4
          i32.wrap/i64
          i32.const 255
          i32.and
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          get_local 4
          i64.const 32
          i64.shr_u
          i32.wrap/i64
          set_local 2
          br 1 (;@2;)
        end
        i32.const 0
        set_local 2
        block  ;; label = @3
          get_local 4
          i64.const 65280
          i64.and
          i64.const 256
          i64.ne
          br_if 0 (;@3;)
          get_local 3
          i32.const 10
          i32.store offset=56
          get_local 3
          i32.const 8
          i32.add
          get_local 3
          i32.const 56
          i32.add
          call $<serde_cbor::de::Deserializer<R>>::error::h68424e45aec74d0c
          set_local 2
        end
        get_local 3
        i32.const 88
        i32.add
        call $core::ptr::real_drop_in_place::h4acc31ecbd8a805a
      end
      get_local 3
      get_local 2
      i32.store offset=84
      block  ;; label = @2
        get_local 2
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        i32.const 1
        i32.store
        get_local 0
        get_local 2
        i32.store offset=4
        get_local 3
        i32.const 40
        i32.add
        call $core::ptr::real_drop_in_place::h88bf5e1688a86f22
        br 1 (;@1;)
      end
      get_local 3
      i32.const 84
      i32.add
      call $core::ptr::real_drop_in_place::he236952c6ed49d30
      get_local 0
      i32.const 0
      i32.store
      get_local 0
      i32.const 16
      i32.add
      get_local 3
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      i64.load
      i64.store
      get_local 0
      i32.const 8
      i32.add
      get_local 3
      i64.load offset=40
      i64.store
    end
    get_local 1
    call $core::ptr::real_drop_in_place::he33a927f4ac61062
    get_local 3
    i32.const 96
    i32.add
    set_global 0)
  (func $<serde_cbor::error::Error as core::fmt::Debug>::fmt::he1f9aa1a561154ff (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    unreachable)
  (func $<&T as core::fmt::Display>::fmt::h433ac9e3bc1211ca (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $core::panicking::panic_fmt::h4f468f2affe6a61e (type 5) (param i32 i32)
    (local i32 i64)
    unreachable)
  (func $<core::result::Result<T, E>>::unwrap::h74f506793f91c4fb (type 5) (param i32 i32)
    block  ;; label = @1
      get_local 1
      i32.load
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      get_local 0
      i32.const 8
      i32.add
      get_local 1
      i32.const 16
      i32.add
      i64.load
      i64.store
      get_local 0
      get_local 1
      i32.const 8
      i32.add
      i64.load
      i64.store
      return
    end
    i32.const 1048687
    get_local 1
    i32.load offset=4
    call $core::result::unwrap_failed::h3c0455058537d067
    unreachable)
  (func $core::panicking::panic::h120f75380e215ba4 (type 0) (param i32)
    (local i32 i64 i64 i64)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 1
    set_global 0
    get_local 0
    i64.load offset=8 align=4
    set_local 2
    get_local 0
    i64.load offset=16 align=4
    set_local 3
    get_local 0
    i64.load align=4
    set_local 4
    get_local 1
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    get_local 1
    get_local 4
    i64.store offset=24
    get_local 1
    i32.const 1051504
    i32.store offset=16
    get_local 1
    i64.const 1
    i64.store offset=4 align=4
    get_local 1
    get_local 1
    i32.const 24
    i32.add
    i32.store
    get_local 1
    get_local 3
    i64.store offset=40
    get_local 1
    get_local 2
    i64.store offset=32
    get_local 1
    get_local 1
    i32.const 32
    i32.add
    call $core::panicking::panic_fmt::h4f468f2affe6a61e
    unreachable)
  (func $dealloc (type 5) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 0
    i32.store offset=8
    get_local 2
    get_local 1
    i32.store offset=4
    get_local 2
    get_local 0
    i32.store
    get_local 2
    call $core::ptr::real_drop_in_place::he33a927f4ac61062
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $alloc (type 4) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    call $<alloc::vec::Vec<T>>::with_capacity::h764b9e8cdc25089b
    get_local 1
    i32.load
    set_local 0
    get_local 1
    i32.const 16
    i32.add
    set_global 0
    get_local 0)
  (func $alloc::collections::btree::map::first_leaf_edge::h93c7784cd4365aa5 (type 5) (param i32 i32)
    (local i32 i32 i32)
    get_local 1
    i32.load
    i32.const -1
    i32.add
    set_local 2
    get_local 1
    i32.load offset=4
    set_local 3
    get_local 1
    i32.const 4
    i32.add
    set_local 4
    block  ;; label = @1
      loop  ;; label = @2
        get_local 2
        i32.const -1
        i32.eq
        br_if 1 (;@1;)
        get_local 4
        get_local 3
        i32.load offset=360
        tee_local 3
        i32.store
        get_local 1
        get_local 2
        i32.store
        get_local 2
        i32.const -1
        i32.add
        set_local 2
        br 0 (;@2;)
      end
    end
    get_local 0
    i32.const 0
    i32.store offset=12
    get_local 0
    get_local 3
    i32.store offset=4
    get_local 0
    i32.const 0
    i32.store
    get_local 0
    get_local 1
    i32.load offset=8
    i32.store offset=8)
  (func $<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Owned, K, V, alloc::collections::btree::node::marker::Leaf>>::deallocate_and_ascend::hcc7177937f069f56 (type 5) (param i32 i32)
    (local i32 i32 i32 i64)
    get_local 1
    i32.load offset=8
    set_local 2
    get_local 1
    i32.load
    set_local 3
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.load offset=4
        tee_local 1
        i32.load
        tee_local 4
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        i32.const 1
        i32.add
        set_local 3
        get_local 1
        i64.load16_u offset=4
        i64.const 32
        i64.shl
        get_local 2
        i64.extend_u/i32
        i64.or
        set_local 5
        br 1 (;@1;)
      end
      get_local 2
      i64.extend_u/i32
      set_local 5
      i32.const 0
      set_local 4
    end
    get_local 1
    i32.const 360
    i32.const 8
    call $__rust_dealloc
    get_local 0
    get_local 5
    i64.store offset=8 align=4
    get_local 0
    get_local 4
    i32.store offset=4
    get_local 0
    get_local 3
    i32.store)
  (func $<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Owned, K, V, alloc::collections::btree::node::marker::Internal>>::deallocate_and_ascend::h8e3744bb36face39 (type 5) (param i32 i32)
    (local i32 i32 i32 i64)
    get_local 1
    i32.load offset=8
    set_local 2
    get_local 1
    i32.load
    set_local 3
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.load offset=4
        tee_local 1
        i32.load
        tee_local 4
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        i32.const 1
        i32.add
        set_local 3
        get_local 1
        i64.load16_u offset=4
        i64.const 32
        i64.shl
        get_local 2
        i64.extend_u/i32
        i64.or
        set_local 5
        br 1 (;@1;)
      end
      get_local 2
      i64.extend_u/i32
      set_local 5
      i32.const 0
      set_local 4
    end
    get_local 1
    i32.const 408
    i32.const 8
    call $__rust_dealloc
    get_local 0
    get_local 5
    i64.store offset=8 align=4
    get_local 0
    get_local 4
    i32.store offset=4
    get_local 0
    get_local 3
    i32.store)
  (func $core::iter::traits::iterator::Iterator::for_each::{{closure}}::he270d0d061695734 (type 0) (param i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    i32.const 24
    i32.add
    get_local 0
    i32.const 24
    i32.add
    i64.load
    i64.store
    get_local 1
    i32.const 16
    i32.add
    get_local 0
    i32.const 16
    i32.add
    i64.load
    i64.store
    get_local 1
    i32.const 8
    i32.add
    get_local 0
    i32.const 8
    i32.add
    i64.load
    i64.store
    get_local 1
    get_local 0
    i64.load
    i64.store
    get_local 1
    call $core::ptr::real_drop_in_place::hb6af67120a6ad7ce
    get_local 1
    i32.const 32
    i32.add
    set_global 0)
  (func $core::ptr::real_drop_in_place::he1bfd250f99ba627 (type 0) (param i32)
    block  ;; label = @1
      get_local 0
      i32.load8_u
      i32.const 5
      i32.eq
      br_if 0 (;@1;)
      get_local 0
      call $core::ptr::real_drop_in_place::hb6af67120a6ad7ce
    end)
  (func $core::ptr::real_drop_in_place::hb6af67120a6ad7ce (type 0) (param i32)
    get_local 0
    call $core::ptr::real_drop_in_place::h5f29357962130283
    get_local 0
    i32.const 16
    i32.add
    call $core::ptr::real_drop_in_place::h873c8d2a782c39da)
  (func $core::ptr::real_drop_in_place::h5f29357962130283 (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.load8_u
        tee_local 1
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        get_local 1
        i32.const 2
        i32.ne
        br_if 1 (;@1;)
        get_local 0
        i32.const 4
        i32.add
        call $core::ptr::real_drop_in_place::ha843bc9191408d1f
        return
      end
      get_local 0
      i32.const 4
      i32.add
      call $core::ptr::real_drop_in_place::ha843bc9191408d1f
      return
    end)
  (func $core::ptr::real_drop_in_place::h873c8d2a782c39da (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 0
          i32.load8_u
          i32.const -2
          i32.add
          tee_local 1
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              get_local 1
              br_table 0 (;@5;) 1 (;@4;) 3 (;@2;) 4 (;@1;) 0 (;@5;)
            end
            get_local 0
            i32.const 4
            i32.add
            call $core::ptr::real_drop_in_place::ha843bc9191408d1f
            return
          end
          get_local 0
          i32.const 4
          i32.add
          call $core::ptr::real_drop_in_place::ha843bc9191408d1f
        end
        return
      end
      get_local 0
      i32.const 4
      i32.add
      tee_local 0
      call $<alloc::vec::Vec<T> as core::ops::drop::Drop>::drop::he243ea68cc50daf9
      get_local 0
      call $<alloc::raw_vec::RawVec<T, A>>::dealloc_buffer::h2080339648c8451d
      return
    end
    get_local 0
    i32.const 4
    i32.add
    call $<alloc::collections::btree::map::BTreeMap<K, V> as core::ops::drop::Drop>::drop::h2a5dac4e76049b5f)
  (func $core::ptr::real_drop_in_place::ha843bc9191408d1f (type 0) (param i32)
    get_local 0
    i32.load
    get_local 0
    i32.const 4
    i32.add
    i32.load
    call $<alloc::raw_vec::RawVec<T, A>>::dealloc_buffer::hdfa31298cc5471e8)
  (func $<core::fmt::Arguments<'_> as core::fmt::Display>::fmt::he750742997288d39 (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    unreachable)
  (func $<&T as core::fmt::Debug>::fmt::hf779e86418930fdc (type 2) (param i32 i32) (result i32)
    (local i32)
    unreachable)
  (func $core::fmt::num::<impl core::fmt::Display for u32>::fmt::h476388176503bbaa (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    unreachable)
  (func $alloc::alloc::exchange_malloc::h850213703570f63e (type 4) (param i32) (result i32)
    block  ;; label = @1
      get_local 0
      i32.const 8
      call $__rust_alloc
      tee_local 0
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      return
    end
    unreachable
    unreachable)
  (func $<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Mut<'a>, K, V, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>::insert_fit::hb8d8e535042f9d33 (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.load offset=4
        tee_local 3
        i32.const 1049348
        i32.eq
        br_if 0 (;@2;)
        get_local 3
        i32.const 8
        i32.add
        set_local 4
        get_local 3
        i32.load16_u offset=6
        set_local 5
        br 1 (;@1;)
      end
      i32.const 1051504
      set_local 4
      i32.const 0
      set_local 5
    end
    get_local 4
    get_local 0
    i32.load offset=12
    tee_local 6
    i32.const 4
    i32.shl
    i32.add
    tee_local 3
    i32.const 16
    i32.add
    get_local 3
    get_local 5
    get_local 6
    i32.sub
    i32.const 4
    i32.shl
    call $memmove
    drop
    get_local 3
    i32.const 8
    i32.add
    get_local 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    get_local 3
    get_local 1
    i64.load
    i64.store
    get_local 0
    i32.const 4
    i32.add
    tee_local 3
    i32.load
    tee_local 4
    get_local 0
    i32.load offset=12
    tee_local 5
    i32.const 4
    i32.shl
    i32.add
    tee_local 1
    i32.const 200
    i32.add
    get_local 1
    i32.const 184
    i32.add
    tee_local 6
    get_local 4
    i32.load16_u offset=6
    get_local 5
    i32.sub
    i32.const 4
    i32.shl
    call $memmove
    drop
    get_local 1
    i32.const 192
    i32.add
    get_local 2
    i32.const 8
    i32.add
    i64.load
    i64.store
    get_local 6
    get_local 2
    i64.load
    i64.store
    get_local 3
    i32.load
    tee_local 1
    get_local 1
    i32.load16_u offset=6
    i32.const 1
    i32.add
    i32.store16 offset=6
    get_local 3
    i32.load
    get_local 0
    i32.load offset=12
    i32.const 4
    i32.shl
    i32.add
    i32.const 184
    i32.add)
  (func $<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Mut<'a>, K, V, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::insert_fit::h3e5f55c9ad95f60d (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 4
    set_global 0
    get_local 4
    get_local 0
    i64.load offset=8 align=4
    i64.store offset=8
    get_local 4
    get_local 0
    i64.load align=4
    i64.store
    get_local 4
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    get_local 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    get_local 4
    get_local 1
    i64.load
    i64.store offset=16
    get_local 4
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    get_local 2
    i32.const 8
    i32.add
    i64.load
    i64.store
    get_local 4
    get_local 2
    i64.load
    i64.store offset=32
    get_local 4
    get_local 4
    i32.const 16
    i32.add
    get_local 4
    i32.const 32
    i32.add
    call $<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Mut<'a>, K, V, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>::insert_fit::hb8d8e535042f9d33
    drop
    get_local 0
    i32.load offset=4
    tee_local 2
    i32.const 360
    i32.add
    tee_local 1
    get_local 0
    i32.load offset=12
    tee_local 5
    i32.const 2
    i32.shl
    i32.add
    i32.const 8
    i32.add
    get_local 1
    get_local 5
    i32.const 1
    i32.add
    tee_local 5
    i32.const 2
    i32.shl
    i32.add
    tee_local 1
    get_local 2
    i32.load16_u offset=6
    get_local 5
    i32.sub
    i32.const 2
    i32.shl
    call $memmove
    drop
    get_local 1
    get_local 3
    i32.store
    get_local 0
    i32.load offset=12
    tee_local 1
    i32.const 1
    i32.add
    set_local 2
    get_local 1
    i32.const 2
    i32.shl
    i32.const 364
    i32.add
    set_local 1
    get_local 0
    i32.load offset=4
    i32.load16_u offset=6
    set_local 6
    block  ;; label = @1
      loop  ;; label = @2
        get_local 2
        get_local 6
        i32.gt_u
        br_if 1 (;@1;)
        get_local 0
        i32.const 4
        i32.add
        i32.load
        tee_local 3
        get_local 1
        i32.add
        i32.load
        tee_local 5
        get_local 2
        i32.store16 offset=4
        get_local 5
        get_local 3
        i32.store
        get_local 1
        i32.const 4
        i32.add
        set_local 1
        get_local 2
        i32.const 1
        i32.add
        set_local 2
        br 0 (;@2;)
      end
    end
    get_local 4
    i32.const 48
    i32.add
    set_global 0)
  (func $<&T as core::fmt::Debug>::fmt::h0888cd15851fb078 (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    unreachable)
  (func $core::ptr::real_drop_in_place::h210442a71d003aac (type 0) (param i32))
  (func $core::ptr::real_drop_in_place::h0e732894122ca437 (type 0) (param i32))
  (func $<&T as core::fmt::Debug>::fmt::h8e7adf568ed03b85 (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    unreachable)
  (func $core::ptr::real_drop_in_place::h325f1ee002ca37c2 (type 0) (param i32))
  (func $<&T as core::fmt::Display>::fmt::h8d1fbdfbf794236d (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $<&T as core::fmt::Display>::fmt::hd12c6df70dc5e512 (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $<alloc::raw_vec::RawVec<T, A>>::allocate_in::{{closure}}::hc53115b0f3ecf84e (type 7)
    call $alloc::raw_vec::capacity_overflow::h1723897ee1c75c11
    unreachable)
  (func $core::fmt::Write::write_fmt::hbfae1ed16cfe35fe (type 2) (param i32 i32) (result i32)
    (local i32)
    unreachable)
  (func $core::ptr::real_drop_in_place::h9db6189055ae4c82 (type 0) (param i32))
  (func $<&mut W as core::fmt::Write>::write_str::h1dbd926978d2d580 (type 1) (param i32 i32 i32) (result i32)
    unreachable)
  (func $<&mut W as core::fmt::Write>::write_char::h85c0cb3215bd854a (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    unreachable)
  (func $<&mut W as core::fmt::Write>::write_fmt::he39221eb5fdfdf67 (type 2) (param i32 i32) (result i32)
    (local i32)
    unreachable)
  (func $core::result::unwrap_failed::h2266ad9dddec96d1 (type 7)
    (local i32)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 0
    set_global 0
    get_local 0
    i32.const 55
    i32.store offset=12
    get_local 0
    i32.const 1049054
    i32.store offset=8
    get_local 0
    i32.const 52
    i32.add
    i32.const 10
    i32.store
    get_local 0
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    get_local 0
    i32.const 2
    i32.store offset=44
    get_local 0
    i64.const 2
    i64.store offset=20 align=4
    get_local 0
    i32.const 1057196
    i32.store offset=16
    get_local 0
    get_local 0
    i32.const 56
    i32.add
    i32.store offset=48
    get_local 0
    get_local 0
    i32.const 8
    i32.add
    i32.store offset=40
    get_local 0
    get_local 0
    i32.const 40
    i32.add
    i32.store offset=32
    get_local 0
    i32.const 16
    i32.add
    i32.const 1057212
    call $core::panicking::panic_fmt::h4f468f2affe6a61e
    unreachable)
  (func $<core::fmt::Error as core::fmt::Debug>::fmt::h02914643ee4f2d3b (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $<alloc::vec::Vec<T> as core::cmp::Ord>::cmp::h0e8817cbc8c0fa93 (type 2) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      get_local 0
      i32.load
      get_local 1
      i32.load
      get_local 1
      i32.load offset=8
      tee_local 1
      get_local 0
      i32.load offset=8
      tee_local 0
      get_local 0
      get_local 1
      i32.gt_u
      select
      call $memcmp
      tee_local 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const -1
      i32.const 1
      get_local 2
      i32.const 0
      i32.lt_s
      select
      return
    end
    i32.const 0
    i32.const -1
    i32.const 1
    get_local 0
    get_local 1
    i32.lt_u
    select
    get_local 0
    get_local 1
    i32.eq
    select)
  (func $core::ptr::real_drop_in_place::h43523c1c2d53bf35 (type 0) (param i32))
  (func $<serde_cbor::error::Error as serde::de::Error>::custom::hc79ef1c117e5b828 (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.const 0
    i32.store offset=24
    get_local 1
    i64.const 1
    i64.store offset=16
    get_local 1
    i32.const 52
    i32.add
    i32.const 1
    i32.store
    get_local 1
    i32.const 11
    i32.store offset=60
    get_local 1
    i64.const 1
    i64.store offset=36 align=4
    get_local 1
    i32.const 1057268
    i32.store offset=32
    get_local 1
    get_local 1
    i32.const 12
    i32.add
    i32.store offset=56
    get_local 1
    get_local 1
    i32.const 56
    i32.add
    i32.store offset=48
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.const 16
        i32.add
        get_local 1
        i32.const 32
        i32.add
        call $core::fmt::Write::write_fmt::hbfae1ed16cfe35fe
        br_if 0 (;@2;)
        block  ;; label = @3
          get_local 1
          i32.load offset=20
          tee_local 2
          get_local 1
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          tee_local 3
          i32.load
          tee_local 0
          i32.eq
          br_if 0 (;@3;)
          get_local 2
          get_local 0
          i32.lt_u
          br_if 2 (;@1;)
          get_local 1
          i32.load offset=16
          set_local 4
          block  ;; label = @4
            block  ;; label = @5
              get_local 0
              i32.eqz
              br_if 0 (;@5;)
              get_local 4
              get_local 2
              i32.const 1
              get_local 0
              call $__rust_realloc
              tee_local 2
              br_if 1 (;@4;)
              unreachable
              unreachable
            end
            get_local 4
            get_local 2
            call $<alloc::raw_vec::RawVec<T, A>>::dealloc_buffer::hdfa31298cc5471e8
            i32.const 0
            set_local 0
            i32.const 1
            set_local 2
          end
          get_local 1
          get_local 0
          i32.store offset=20
          get_local 1
          get_local 2
          i32.store offset=16
        end
        get_local 1
        i32.const 32
        i32.add
        i32.const 8
        i32.add
        tee_local 2
        get_local 3
        i32.load
        i32.store
        get_local 1
        get_local 1
        i64.load offset=16
        i64.store offset=32
        i32.const 24
        call $alloc::alloc::exchange_malloc::h850213703570f63e
        tee_local 0
        i32.const 0
        i32.store offset=8
        get_local 0
        i64.const 0
        i64.store
        get_local 0
        get_local 1
        i64.load offset=32
        i64.store offset=12 align=4
        get_local 0
        i32.const 20
        i32.add
        get_local 2
        i32.load
        i32.store
        get_local 1
        i32.const 64
        i32.add
        set_global 0
        get_local 0
        return
      end
      call $core::result::unwrap_failed::h2266ad9dddec96d1
      unreachable
    end
    i32.const 1057124
    call $core::panicking::panic::h120f75380e215ba4
    unreachable)
  (func $<serde::de::Unexpected<'a> as core::fmt::Display>::fmt::h6fd84f74d9d352e2 (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    unreachable)
  (func $std::panicking::rust_panic_with_hook::he95725d89173693d (type 0) (param i32)
    (local i32 i32)
    i32.const 1
    set_local 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1057016
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.load offset=1057020
            i32.const 1
            i32.add
            tee_local 1
            i32.store offset=1057020
            get_local 1
            i32.const 3
            i32.lt_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          i64.const 4294967297
          i64.store offset=1057016
        end
        i32.const 0
        i32.load offset=1057024
        tee_local 2
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 0
        get_local 2
        i32.store offset=1057024
        get_local 1
        i32.const 2
        i32.lt_u
        br_if 1 (;@1;)
      end
      unreachable
      unreachable
    end
    call $rust_panic
    unreachable)
  (func $<&T as core::fmt::Debug>::fmt::h641b9511304f589a (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $<&T as core::fmt::Debug>::fmt::h2a3b5484cb526378 (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $<&T as core::fmt::Debug>::fmt::h8e4915c6fb9162f1 (type 2) (param i32 i32) (result i32)
    (local i32 i32 i64)
    unreachable)
  (func $core::fmt::num::<impl core::fmt::Display for u64>::fmt::h3ece8a67816d6901 (type 2) (param i32 i32) (result i32)
    (local i32 i32 i64 i64 i32 i32)
    unreachable)
  (func $<bool as core::fmt::Display>::fmt::h255389f2c3d872eb (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $core::fmt::num::<impl core::fmt::Display for i64>::fmt::h03491595e57c285b (type 2) (param i32 i32) (result i32)
    (local i32 i32 i64 i64 i64 i32 i32)
    unreachable)
  (func $core::fmt::float::<impl core::fmt::Display for f64>::fmt::h7965c4426f473600 (type 2) (param i32 i32) (result i32)
    (local i32)
    unreachable)
  (func $<char as core::fmt::Display>::fmt::h1e3870cd2be81884 (type 2) (param i32 i32) (result i32)
    (local i32)
    unreachable)
  (func $<wee_alloc::size_classes::SizeClassAllocPolicy<'a, 'b> as wee_alloc::AllocPolicy<'a>>::new_cell_for_free_list::h79679c266b923ced (type 3) (param i32 i32 i32 i32)
    (local i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 4
    set_global 0
    get_local 4
    get_local 1
    i32.load
    tee_local 1
    i32.load
    i32.store offset=12
    get_local 2
    i32.const 2
    i32.add
    tee_local 2
    get_local 2
    i32.mul
    tee_local 2
    i32.const 2048
    get_local 2
    i32.const 2048
    i32.gt_u
    select
    tee_local 5
    i32.const 4
    get_local 4
    i32.const 12
    i32.add
    i32.const 1051504
    i32.const 1057460
    call $wee_alloc::alloc_with_refill::h871ca8d8848ffc55
    set_local 2
    get_local 1
    get_local 4
    i32.load offset=12
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.eqz
        br_if 0 (;@2;)
        get_local 2
        i64.const 0
        i64.store offset=4 align=4
        get_local 2
        get_local 2
        get_local 5
        i32.const 2
        i32.shl
        i32.add
        i32.const 2
        i32.or
        i32.store
        i32.const 0
        set_local 1
        br 1 (;@1;)
      end
      i32.const 1
      set_local 1
    end
    get_local 0
    get_local 2
    i32.store offset=4
    get_local 0
    get_local 1
    i32.store
    get_local 4
    i32.const 16
    i32.add
    set_global 0)
  (func $wee_alloc::alloc_with_refill::h871ca8d8848ffc55 (type 19) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 5
    set_global 0
    block  ;; label = @1
      get_local 0
      get_local 1
      get_local 2
      get_local 3
      get_local 4
      call $wee_alloc::alloc_first_fit::h24e2570dd49b3d6e
      tee_local 6
      br_if 0 (;@1;)
      get_local 5
      i32.const 8
      i32.add
      get_local 3
      get_local 0
      get_local 1
      get_local 4
      i32.load offset=12
      call_indirect 3
      i32.const 0
      set_local 6
      get_local 5
      i32.load offset=8
      br_if 0 (;@1;)
      get_local 5
      i32.load offset=12
      tee_local 6
      get_local 2
      i32.load
      i32.store offset=8
      get_local 2
      get_local 6
      i32.store
      get_local 0
      get_local 1
      get_local 2
      get_local 3
      get_local 4
      call $wee_alloc::alloc_first_fit::h24e2570dd49b3d6e
      set_local 6
    end
    get_local 5
    i32.const 16
    i32.add
    set_global 0
    get_local 6)
  (func $wee_alloc::alloc_first_fit::h24e2570dd49b3d6e (type 19) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    get_local 1
    i32.const -1
    i32.add
    set_local 5
    i32.const 0
    get_local 1
    i32.sub
    set_local 6
    get_local 0
    i32.const 2
    i32.shl
    set_local 7
    get_local 2
    i32.load
    set_local 1
    get_local 4
    i32.const 16
    i32.add
    set_local 8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              get_local 1
              i32.eqz
              br_if 1 (;@4;)
              block  ;; label = @6
                loop  ;; label = @7
                  get_local 1
                  i32.const 8
                  i32.add
                  set_local 4
                  get_local 1
                  i32.load offset=8
                  tee_local 9
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 1 (;@6;)
                  get_local 4
                  get_local 9
                  i32.const -2
                  i32.and
                  i32.store
                  block  ;; label = @8
                    block  ;; label = @9
                      get_local 1
                      i32.load offset=4
                      i32.const -4
                      i32.and
                      tee_local 4
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 0
                      get_local 4
                      get_local 4
                      i32.load8_u
                      i32.const 1
                      i32.and
                      select
                      set_local 4
                      br 1 (;@8;)
                    end
                    i32.const 0
                    set_local 4
                  end
                  get_local 1
                  call $<wee_alloc::neighbors::Neighbors<'a, T>>::remove::he8a7ddd03dca23b3
                  block  ;; label = @8
                    get_local 1
                    i32.load8_u
                    i32.const 2
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    get_local 4
                    get_local 4
                    i32.load
                    i32.const 2
                    i32.or
                    i32.store
                  end
                  get_local 2
                  get_local 4
                  i32.store
                  get_local 4
                  set_local 1
                  br 0 (;@7;)
                end
              end
              block  ;; label = @6
                get_local 1
                i32.load
                i32.const -4
                i32.and
                tee_local 9
                get_local 4
                i32.sub
                get_local 7
                i32.lt_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  get_local 4
                  get_local 3
                  get_local 0
                  get_local 8
                  i32.load
                  call_indirect 2
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.const 8
                  i32.add
                  get_local 9
                  get_local 7
                  i32.sub
                  get_local 6
                  i32.and
                  tee_local 9
                  i32.le_u
                  br_if 0 (;@7;)
                  get_local 5
                  get_local 4
                  i32.and
                  br_if 1 (;@6;)
                  br 4 (;@3;)
                end
                get_local 9
                i32.const 0
                i32.store
                get_local 9
                i32.const -8
                i32.add
                tee_local 9
                i64.const 0
                i64.store align=4
                get_local 9
                get_local 1
                i32.load
                i32.const -4
                i32.and
                i32.store
                block  ;; label = @7
                  get_local 1
                  i32.load
                  tee_local 10
                  i32.const -4
                  i32.and
                  tee_local 11
                  i32.eqz
                  br_if 0 (;@7;)
                  get_local 10
                  i32.const 2
                  i32.and
                  br_if 0 (;@7;)
                  get_local 11
                  get_local 11
                  i32.load offset=4
                  i32.const 3
                  i32.and
                  get_local 9
                  i32.or
                  i32.store offset=4
                end
                get_local 9
                get_local 9
                i32.load offset=4
                i32.const 3
                i32.and
                get_local 1
                i32.or
                i32.store offset=4
                get_local 4
                get_local 4
                i32.load
                i32.const -2
                i32.and
                i32.store
                get_local 1
                get_local 1
                i32.load
                tee_local 11
                i32.const 3
                i32.and
                get_local 9
                i32.or
                tee_local 10
                i32.store
                get_local 11
                i32.const 2
                i32.and
                br_if 4 (;@2;)
                get_local 9
                get_local 9
                i32.load
                i32.const 1
                i32.or
                i32.store
                get_local 9
                br_if 5 (;@1;)
              end
              get_local 2
              get_local 4
              i32.load
              tee_local 1
              i32.store
              br 0 (;@5;)
            end
          end
          i32.const 0
          return
        end
        get_local 2
        get_local 1
        i32.const 8
        i32.add
        i32.load
        i32.const -4
        i32.and
        i32.store
        get_local 1
        get_local 1
        i32.load
        i32.const 1
        i32.or
        i32.store
        get_local 1
        set_local 9
        br 1 (;@1;)
      end
      get_local 1
      get_local 10
      i32.const -3
      i32.and
      i32.store
      get_local 9
      get_local 9
      i32.load
      i32.const 3
      i32.or
      i32.store
    end
    get_local 9
    i32.const 8
    i32.add)
  (func $<wee_alloc::neighbors::Neighbors<'a, T>>::remove::he8a7ddd03dca23b3 (type 0) (param i32)
    (local i32 i32)
    block  ;; label = @1
      get_local 0
      i32.load
      tee_local 1
      i32.const -4
      i32.and
      tee_local 2
      i32.eqz
      br_if 0 (;@1;)
      get_local 1
      i32.const 2
      i32.and
      br_if 0 (;@1;)
      get_local 2
      get_local 2
      i32.load offset=4
      i32.const 3
      i32.and
      get_local 0
      i32.load offset=4
      i32.const -4
      i32.and
      i32.or
      i32.store offset=4
    end
    block  ;; label = @1
      get_local 0
      i32.load offset=4
      tee_local 2
      i32.const -4
      i32.and
      tee_local 1
      i32.eqz
      br_if 0 (;@1;)
      get_local 1
      get_local 1
      i32.load
      i32.const 3
      i32.and
      get_local 0
      i32.load
      i32.const -4
      i32.and
      i32.or
      i32.store
      get_local 0
      i32.const 4
      i32.add
      i32.load
      set_local 2
    end
    get_local 0
    i32.const 4
    i32.add
    get_local 2
    i32.const 3
    i32.and
    i32.store
    get_local 0
    get_local 0
    i32.load
    i32.const 3
    i32.and
    i32.store)
  (func $core::ptr::real_drop_in_place::hbf43be7bd94dccc6 (type 0) (param i32))
  (func $<wee_alloc::LargeAllocPolicy as wee_alloc::AllocPolicy<'a>>::new_cell_for_free_list::hf8c6f467eda5592e (type 3) (param i32 i32 i32 i32)
    (local i32)
    i32.const 0
    set_local 4
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        get_local 2
        i32.const 2
        i32.shl
        tee_local 2
        get_local 3
        i32.const 3
        i32.shl
        i32.const 16384
        i32.add
        tee_local 3
        get_local 3
        get_local 2
        i32.lt_u
        select
        i32.const 65543
        i32.add
        tee_local 2
        i32.const 16
        i32.shr_u
        grow_memory
        tee_local 3
        i32.const 16
        i32.shl
        get_local 3
        i32.const -1
        i32.eq
        select
        tee_local 3
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        i64.const 0
        i64.store offset=4 align=4
        get_local 3
        get_local 3
        get_local 2
        i32.const -65536
        i32.and
        i32.add
        i32.const 2
        i32.or
        i32.store
        br 1 (;@1;)
      end
      i32.const 1
      set_local 4
    end
    get_local 0
    get_local 3
    i32.store offset=4
    get_local 0
    get_local 4
    i32.store)
  (func $<wee_alloc::LargeAllocPolicy as wee_alloc::AllocPolicy<'a>>::min_cell_size::h8067e024979cf55f (type 2) (param i32 i32) (result i32)
    i32.const 512)
  (func $<wee_alloc::LargeAllocPolicy as wee_alloc::AllocPolicy<'a>>::should_merge_adjacent_free_cells::hf7e3df0089e085fe (type 4) (param i32) (result i32)
    i32.const 1)
  (func $<wee_alloc::size_classes::SizeClassAllocPolicy<'a, 'b> as wee_alloc::AllocPolicy<'a>>::min_cell_size::h3ec6cedb3ef97967 (type 2) (param i32 i32) (result i32)
    get_local 1)
  (func $<wee_alloc::size_classes::SizeClassAllocPolicy<'a, 'b> as wee_alloc::AllocPolicy<'a>>::should_merge_adjacent_free_cells::hd9c0a5a5298a4ab9 (type 4) (param i32) (result i32)
    i32.const 0)
  (func $core::ptr::real_drop_in_place::ha4bdcece73c14e22 (type 0) (param i32))
  (func $wee_alloc::WeeAlloc::dealloc_impl::{{closure}}::h17b94554aac89400 (type 3) (param i32 i32 i32 i32)
    (local i32)
    get_local 0
    i32.load
    tee_local 4
    i32.const 0
    i32.store
    get_local 4
    i32.const -8
    i32.add
    tee_local 0
    get_local 0
    i32.load
    i32.const -2
    i32.and
    i32.store
    block  ;; label = @1
      get_local 2
      get_local 3
      i32.load offset=20
      call_indirect 4
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        get_local 4
        i32.const -4
        i32.add
        i32.load
        i32.const -4
        i32.and
        tee_local 2
        i32.eqz
        br_if 0 (;@2;)
        get_local 2
        i32.load8_u
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        get_local 0
        call $<wee_alloc::neighbors::Neighbors<'a, T>>::remove::he8a7ddd03dca23b3
        block  ;; label = @3
          get_local 0
          i32.load8_u
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          get_local 2
          get_local 2
          i32.load
          i32.const 2
          i32.or
          i32.store
        end
        return
      end
      get_local 0
      i32.load
      tee_local 2
      i32.const -4
      i32.and
      tee_local 3
      i32.eqz
      br_if 0 (;@1;)
      get_local 2
      i32.const 2
      i32.and
      br_if 0 (;@1;)
      get_local 3
      i32.load8_u
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      get_local 4
      get_local 3
      i32.load offset=8
      i32.const -4
      i32.and
      i32.store
      get_local 3
      get_local 0
      i32.const 1
      i32.or
      i32.store offset=8
      return
    end
    get_local 4
    get_local 1
    i32.load
    i32.store
    get_local 1
    get_local 0
    i32.store)
  (func $rust_panic (type 7)
    unreachable
    unreachable)
  (func $<std::sys_common::thread_local::Key as core::ops::drop::Drop>::drop::h3e4244334dcf5d00 (type 0) (param i32))
  (func $core::ptr::real_drop_in_place::h5a6bd449e2bd6392 (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      get_local 0
      i32.load offset=4
      tee_local 1
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.load
      get_local 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $<&T as core::fmt::Debug>::fmt::h335ba8ee45c28869 (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $<&T as core::fmt::Debug>::fmt::hbf69db809759f9e1 (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $<std::io::error::ErrorKind as core::fmt::Debug>::fmt::hd7cd15b2ef061189 (type 2) (param i32 i32) (result i32)
    (local i32)
    unreachable)
  (func $<alloc::string::String as core::fmt::Debug>::fmt::h30a2d5be1678a15a (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $core::ptr::real_drop_in_place::h536090673b7ff261 (type 0) (param i32))
  (func $core::fmt::num::<impl core::fmt::Debug for i32>::fmt::hdfd21a553c81b6b0 (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    unreachable)
  (func $core::ptr::real_drop_in_place::ha9935fe24d6cb165 (type 0) (param i32))
  (func $<T as core::any::Any>::type_id::h28c7b764311ede30 (type 13) (param i32) (result i64)
    i64.const 7057540935790930384)
  (func $<&T as core::fmt::Debug>::fmt::h20eedf34eb1b4d42 (type 2) (param i32 i32) (result i32)
    (local i32 i32 i64)
    unreachable)
  (func $<&T as core::fmt::Display>::fmt::h6e6579ab32ae3c96 (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h29fb679e9eac9777 (type 2) (param i32 i32) (result i32)
    (local i32)
    unreachable)
  (func $<char as core::fmt::Debug>::fmt::h63eb5fe4a9f73fb5 (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    unreachable)
  (func $core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hca4136eac192403d (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    unreachable)
  (func $core::fmt::ArgumentV1::show_usize::hb80e135e1b0c434a (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $<core::fmt::builders::PadAdapter<'_> as core::fmt::Write>::write_str::h8ada547a01bda39a (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    unreachable)
  (func $core::ptr::real_drop_in_place::h1fd81c394435619c (type 0) (param i32))
  (func $core::fmt::Write::write_char::he9dc7c59cb4dbde1 (type 2) (param i32 i32) (result i32)
    (local i32)
    unreachable)
  (func $core::fmt::Write::write_fmt::h033b34d453eff41d (type 2) (param i32 i32) (result i32)
    (local i32)
    unreachable)
  (func $core::ptr::real_drop_in_place::h021fde6f5b436cd5 (type 0) (param i32))
  (func $<&mut W as core::fmt::Write>::write_str::h1ff11e5207bb173d (type 1) (param i32 i32 i32) (result i32)
    unreachable)
  (func $<&mut W as core::fmt::Write>::write_char::hef18c544a180a708 (type 2) (param i32 i32) (result i32)
    unreachable)
  (func $<&mut W as core::fmt::Write>::write_fmt::h1e608dd189491381 (type 2) (param i32 i32) (result i32)
    (local i32)
    unreachable)
  (func $memcpy (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      get_local 2
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      set_local 3
      loop  ;; label = @2
        get_local 3
        get_local 1
        i32.load8_u
        i32.store8
        get_local 3
        i32.const 1
        i32.add
        set_local 3
        get_local 1
        i32.const 1
        i32.add
        set_local 1
        get_local 2
        i32.const -1
        i32.add
        tee_local 2
        br_if 0 (;@2;)
      end
    end
    get_local 0)
  (func $memmove (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        get_local 0
        i32.ge_u
        br_if 0 (;@2;)
        get_local 2
        i32.eqz
        br_if 1 (;@1;)
        get_local 1
        i32.const -1
        i32.add
        set_local 1
        get_local 0
        i32.const -1
        i32.add
        set_local 3
        loop  ;; label = @3
          get_local 3
          get_local 2
          i32.add
          get_local 1
          get_local 2
          i32.add
          i32.load8_u
          i32.store8
          get_local 2
          i32.const -1
          i32.add
          tee_local 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      get_local 2
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      set_local 3
      loop  ;; label = @2
        get_local 3
        get_local 1
        i32.load8_u
        i32.store8
        get_local 1
        i32.const 1
        i32.add
        set_local 1
        get_local 3
        i32.const 1
        i32.add
        set_local 3
        get_local 2
        i32.const -1
        i32.add
        tee_local 2
        br_if 0 (;@2;)
      end
    end
    get_local 0)
  (func $memcmp (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        set_local 3
        loop  ;; label = @3
          get_local 0
          get_local 3
          i32.add
          i32.load8_u
          tee_local 4
          get_local 1
          get_local 3
          i32.add
          i32.load8_u
          tee_local 5
          i32.ne
          br_if 2 (;@1;)
          get_local 3
          i32.const 1
          i32.add
          tee_local 3
          get_local 2
          i32.lt_u
          br_if 0 (;@3;)
        end
        i32.const 0
        return
      end
      i32.const 0
      return
    end
    get_local 4
    get_local 5
    i32.sub)
  (table (;0;) 62 62 anyfunc)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1060432))
  (global (;2;) i32 (i32.const 1060432))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "constructor" (func $constructor))
  (export "balance_of" (func $balance_of))
  (export "transfer" (func $transfer))
  (export "dealloc" (func $dealloc))
  (export "alloc" (func $alloc))
  (elem (i32.const 1) $<serde_cbor::error::Error as core::fmt::Debug>::fmt::he1f9aa1a561154ff $<&T as core::fmt::Display>::fmt::h433ac9e3bc1211ca $<core::fmt::Arguments<'_> as core::fmt::Display>::fmt::he750742997288d39 $<&T as core::fmt::Debug>::fmt::hf779e86418930fdc $<&T as core::fmt::Display>::fmt::hd12c6df70dc5e512 $<serde::de::Unexpected<'a> as core::fmt::Display>::fmt::h6fd84f74d9d352e2 $core::fmt::num::<impl core::fmt::Display for u32>::fmt::h476388176503bbaa $<&T as core::fmt::Display>::fmt::h6e6579ab32ae3c96 $core::fmt::ArgumentV1::show_usize::hb80e135e1b0c434a $<core::fmt::Error as core::fmt::Debug>::fmt::h02914643ee4f2d3b $<&T as core::fmt::Display>::fmt::h8d1fbdfbf794236d $core::fmt::num::<impl core::fmt::Display for u64>::fmt::h3ece8a67816d6901 $<bool as core::fmt::Display>::fmt::h255389f2c3d872eb $core::fmt::num::<impl core::fmt::Display for i64>::fmt::h03491595e57c285b $core::fmt::float::<impl core::fmt::Display for f64>::fmt::h7965c4426f473600 $<char as core::fmt::Display>::fmt::h1e3870cd2be81884 $<&T as core::fmt::Debug>::fmt::h641b9511304f589a $<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h29fb679e9eac9777 $<char as core::fmt::Debug>::fmt::h63eb5fe4a9f73fb5 $core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hca4136eac192403d $<&T as core::fmt::Debug>::fmt::h20eedf34eb1b4d42 $core::ptr::real_drop_in_place::h328be3946e38230b $<T as serde::de::Expected>::fmt::hf33141608826437c $core::ptr::real_drop_in_place::h0e732894122ca437 $<&T as core::fmt::Debug>::fmt::h8e4915c6fb9162f1 $core::ptr::real_drop_in_place::h210442a71d003aac $<&T as core::fmt::Debug>::fmt::h2a3b5484cb526378 $core::ptr::real_drop_in_place::h325f1ee002ca37c2 $<&T as core::fmt::Debug>::fmt::h0888cd15851fb078 $core::ptr::real_drop_in_place::h9db6189055ae4c82 $<&mut W as core::fmt::Write>::write_str::h1dbd926978d2d580 $<&mut W as core::fmt::Write>::write_char::h85c0cb3215bd854a $<&mut W as core::fmt::Write>::write_fmt::he39221eb5fdfdf67 $core::ptr::real_drop_in_place::h43523c1c2d53bf35 $<&T as core::fmt::Debug>::fmt::h8e7adf568ed03b85 $core::ptr::real_drop_in_place::hbf43be7bd94dccc6 $<wee_alloc::LargeAllocPolicy as wee_alloc::AllocPolicy<'a>>::new_cell_for_free_list::hf8c6f467eda5592e $<wee_alloc::LargeAllocPolicy as wee_alloc::AllocPolicy<'a>>::min_cell_size::h8067e024979cf55f $<wee_alloc::LargeAllocPolicy as wee_alloc::AllocPolicy<'a>>::should_merge_adjacent_free_cells::hf7e3df0089e085fe $core::ptr::real_drop_in_place::ha4bdcece73c14e22 $<wee_alloc::size_classes::SizeClassAllocPolicy<'a, 'b> as wee_alloc::AllocPolicy<'a>>::new_cell_for_free_list::h79679c266b923ced $<wee_alloc::size_classes::SizeClassAllocPolicy<'a, 'b> as wee_alloc::AllocPolicy<'a>>::min_cell_size::h3ec6cedb3ef97967 $<wee_alloc::size_classes::SizeClassAllocPolicy<'a, 'b> as wee_alloc::AllocPolicy<'a>>::should_merge_adjacent_free_cells::hd9c0a5a5298a4ab9 $<std::sys_common::thread_local::Key as core::ops::drop::Drop>::drop::h3e4244334dcf5d00 $core::fmt::num::<impl core::fmt::Debug for i32>::fmt::hdfd21a553c81b6b0 $core::ptr::real_drop_in_place::h536090673b7ff261 $<std::io::error::ErrorKind as core::fmt::Debug>::fmt::hd7cd15b2ef061189 $core::ptr::real_drop_in_place::h5a6bd449e2bd6392 $<alloc::string::String as core::fmt::Debug>::fmt::h30a2d5be1678a15a $<&T as core::fmt::Debug>::fmt::hbf69db809759f9e1 $<&T as core::fmt::Debug>::fmt::h335ba8ee45c28869 $core::ptr::real_drop_in_place::ha9935fe24d6cb165 $<T as core::any::Any>::type_id::h28c7b764311ede30 $core::ptr::real_drop_in_place::h1fd81c394435619c $<core::fmt::builders::PadAdapter<'_> as core::fmt::Write>::write_str::h8ada547a01bda39a $core::fmt::Write::write_char::he9dc7c59cb4dbde1 $core::fmt::Write::write_fmt::h033b34d453eff41d $core::ptr::real_drop_in_place::h021fde6f5b436cd5 $<&mut W as core::fmt::Write>::write_str::h1ff11e5207bb173d $<&mut W as core::fmt::Write>::write_char::hef18c544a180a708 $<&mut W as core::fmt::Write>::write_fmt::h1e608dd189491381)
  (data (i32.const 1048576) "\f9|\00\f9\fc\00\f9~\00\f6\ffbalancesinsufficient funds/Users/masonf/.cargo/git/checkouts/cbor-69911bf8fd7e670a/10a644e/src/de.rscalled `Result::unwrap()` on an `Err` value`: destination and source slices have different lengthsTried to shrink to a larger capacityEofWhileParsingValueEofWhileParsingArrayEofWhileParsingMapNumberOutOfRangeLengthOutOfRangeInvalidUtf8UnassignedCodeUnexpectedCodeTrailingDataArrayTooShortArrayTooLongRecursionLimitExceededMessageIosrc/libcore/result.rsErrorImploffseta Display implementation returned an error unexpectedlyinvalid type: , expected invalid type: null, expected any valid CBOR keybyte arraystring character `floating point `integer `boolean `struct varianttuple variantnewtype variantunit variantenummapsequencenewtype structOption valueunit value\00\00\00\00\00\00\00\00Oscodekindoperation successfulmessageKindCustomerrorNotFoundPermissionDeniedConnectionRefusedConnectionResetConnectionAbortedNotConnectedAddrInUseAddrNotAvailableBrokenPipeAlreadyExistsWouldBlockInvalidInputInvalidDataTimedOutWriteZeroInterruptedOtherUnexpectedEofcapacity overflowsrc/liballoc/raw_vec.rs\00\00\00\00\dfE\1a=\03\cf\1a\e6\c1\fb\cc\fe\00\00\00\00\ca\c6\9a\c7\17\fep\ab\dc\fb\d4\fe\00\00\00\00O\dc\bc\be\fc\b1w\ff\f6\fb\dc\fe\00\00\00\00\0c\d6kA\ef\91V\be\11\fc\e4\fe\00\00\00\00<\fc\7f\90\ad\1f\d0\8d,\fc\ec\fe\00\00\00\00\83\9aU1(\5cQ\d3F\fc\f4\fe\00\00\00\00\b5\c9\a6\ad\8f\acq\9da\fc\fc\fe\00\00\00\00\cb\8b\ee#w\22\9c\ea{\fc\04\ff\00\00\00\00mSx@\91I\cc\ae\96\fc\0c\ff\00\00\00\00W\ce\b6]y\12<\82\b1\fc\14\ff\00\00\00\007V\fbM6\94\10\c2\cb\fc\1c\ff\00\00\00\00O\98H8o\ea\96\90\e6\fc$\ff\00\00\00\00\c7:\82%\cb\85t\d7\00\fd,\ff\00\00\00\00\f4\97\bf\97\cd\cf\86\a0\1b\fd4\ff\00\00\00\00\e5\ac*\17\98\0a4\ef5\fd<\ff\00\00\00\00\8e\b25*\fbg8\b2P\fdD\ff\00\00\00\00;?\c6\d2\df\d4\c8\84k\fdL\ff\00\00\00\00\ba\cd\d3\1a'D\dd\c5\85\fdT\ff\00\00\00\00\96\c9%\bb\ce\9fk\93\a0\fd\5c\ff\00\00\00\00\84\a5b}$l\ac\db\ba\fdd\ff\00\00\00\00\f6\da_\0dXf\ab\a3\d5\fdl\ff\00\00\00\00&\f1\c3\de\93\f8\e2\f3\ef\fdt\ff\00\00\00\00\b8\80\ff\aa\a8\ad\b5\b5\0a\fe|\ff\00\00\00\00\8bJ|l\05_b\87%\fe\84\ff\00\00\00\00S0\c14`\ff\bc\c9?\fe\8c\ff\00\00\00\00U&\ba\91\8c\85N\96Z\fe\94\ff\00\00\00\00\bd~)p$w\f9\dft\fe\9c\ff\00\00\00\00\8f\b8\e5\b8\9f\bd\df\a6\8f\fe\a4\ff\00\00\00\00\94}t\88\cf_\a9\f8\a9\fe\ac\ff\00\00\00\00\cf\9b\a8\8f\93pD\b9\c4\fe\b4\ff\00\00\00\00k\15\0f\bf\f8\f0\08\8a\df\fe\bc\ff\00\00\00\00\b611eU%\b0\cd\f9\fe\c4\ff\00\00\00\00\ac\7f{\d0\c6\e2?\99\14\ff\cc\ff\00\00\00\00\06;+*\c4\10\5c\e4.\ff\d4\ff\00\00\00\00\d3\92si\99$$\aaI\ff\dc\ff\00\00\00\00\0e\ca\00\83\f2\b5\87\fdc\ff\e4\ff\00\00\00\00\eb\1a\11\92d\08\e5\bc~\ff\ec\ff\00\00\00\00\cc\88Po\09\cc\bc\8c\99\ff\f4\ff\00\00\00\00,e\19\e2X\17\b7\d1\b3\ff\fc\ff\00\00\00\00\00\00\00\00\00\00@\9c\ce\ff\04\00\00\00\00\00\00\00\00\00\10\a5\d4\e8\e8\ff\0c\00\00\00\00\00\00\00b\ac\c5\ebx\ad\03\00\14\00\00\00\00\00\84\09\94\f8x9?\81\1e\00\1c\00\00\00\00\00\b3\15\07\c9{\ce\97\c08\00$\00\00\00\00\00p\5c\ea{\ce2~\8fS\00,\00\00\00\00\00h\80\e9\ab\a48\d2\d5m\004\00\00\00\00\00E\22\9a\17&'O\9f\88\00<\00\00\00\00\00'\fb\c4\d41\a2c\ed\a2\00D\00\00\00\00\00\a8\ad\c8\8c8e\de\b0\bd\00L\00\00\00\00\00\dbe\ab\1a\8e\08\c7\83\d8\00T\00\00\00\00\00\9a\1dqB\f9\1d]\c4\f2\00\5c\00\00\00\00\00X\e7\1b\a6,iM\92\0d\01d\00\00\00\00\00\ea\8dp\1ad\ee\01\da'\01l\00\00\00\00\00Jw\ef\9a\99\a3m\a2B\01t\00\00\00\00\00\85k}\b4{x\09\f2\5c\01|\00\00\00\00\00w\18\ddy\a1\e4T\b4w\01\84\00\00\00\00\00\c2\c5\9b[\92\86[\86\92\01\8c\00\00\00\00\00=]\96\c8\c5S5\c8\ac\01\94\00\00\00\00\00\b3\a0\97\fa\5c\b4*\95\c7\01\9c\00\00\00\00\00\e3_\a0\99\bd\9fF\de\e1\01\a4\00\00\00\00\00%\8c9\db4\c2\9b\a5\fc\01\ac\00\00\00\00\00\5c\9f\98\a3r\9a\c6\f6\16\02\b4\00\00\00\00\00\ce\be\e9TS\bf\dc\b71\02\bc\00\00\00\00\00\e2A\22\f2\17\f3\fc\88L\02\c4\00\00\00\00\00\a5x\5c\d3\9b\ce \ccf\02\cc\00\00\00\00\00\dfS!{\f3Z\16\98\81\02\d4\00\00\00\00\00:0\1f\97\dc\b5\a0\e2\9b\02\dc\00\00\00\00\00\96\b3\e3\5cS\d1\d9\a8\b6\02\e4\00\00\00\00\00<D\a7\a4\d9|\9b\fb\d0\02\ec\00\00\00\00\00\10D\a4\a7LLv\bb\eb\02\f4\00\00\00\00\00\1a\9c@\b6\ef\8e\ab\8b\06\03\fc\00\00\00\00\00,\84W\a6\10\ef\1f\d0 \03\04\01\00\00\00\00)1\91\e9\e5\a4\10\9b;\03\0c\01\00\00\00\00\9d\0c\9c\a1\fb\9b\10\e7U\03\14\01\00\00\00\00)\f4;b\d9 (\acp\03\1c\01\00\00\00\00\85\cf\a7z^KD\80\8b\03$\01\00\00\00\00-\dd\ac\03@\e4!\bf\a5\03,\01\00\00\00\00\8f\ffD^/\9cg\8e\c0\034\01\00\00\00\00A\b8\8c\9c\9d\173\d4\da\03<\01\00\00\00\00\a9\1b\e3\b4\92\db\19\9e\f5\03D\01\00\00\00\00\d9w\df\ban\bf\96\eb\0f\04L\01\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0a\00\00\00d\00\00\00\e8\03\00\00\10'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;\00\00\c1o\f2\86#\00\00\00\00\00\81\ef\ac\85[Am-\ee\04\00\00\00\00\00\00\00\00\00\00\01\1fj\bfd\ed8n\ed\97\a7\da\f4\f9?\e9\03O\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01>\95.\09\99\df\03\fd8\15\0f/\e4t#\ec\f5\cf\d3\08\dc\04\c4\da\b0\cd\bc\19\7f3\a6\03&\1f\e9N\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01|.\98[\87\d3\ber\9f\d9\d8\87/\15\12\c6P\dekpnJ\cf\0f\d8\95\d5nq\b2&\b0f\c6\ad$6\15\1dZ\d3B<\0eT\ffc\c0sU\cc\17\ef\f9e\f2(\bcU\f7\c7\dc\80\dc\edn\f4\ce\ef\dc_\f7S\05\00src/libcore/num/bignum.rs\00\00\00\00\00\00\00index out of bounds: the len is  but the index is 00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899src/libcore/slice/mod.rsindex  out of range for slice of length \00\00\00\00\00\00src/libcore/num/flt2dec/strategy/dragon.rs\00\00\00\00\00\00src/libcore/num/flt2dec/mod.rsassertion failed: noborrowsrc/libcore/num/bignum.rsassertion failed: digits < 40src/libcore/num/flt2dec/strategy/dragon.rsassertion failed: d.mant.checked_sub(d.minus).is_some()assertion failed: d.mant.checked_add(d.plus).is_some()assertion failed: d.plus > 0assertion failed: d.mant > 0\00\00\00\02\00\00\00\14\00\00\00\c8\00\00\00\d0\07\00\00 N\00\00@\0d\03\00\80\84\1e\00\00-1\01\00\c2\eb\0b\00\945wslice index starts at  but ends at assertion failed: other > 0\00\00\00\00\00\00\00\00\00\00src/libcore/num/flt2dec/strategy/grisu.rs\00\00\00\00\00\00\00attempt to divide by zerosrc/libcore/num/diy_float.rsassertion failed: `(left == right)`\0a  left: ``,\0a right: ``0xassertion failed: edelta >= 0assertion failed: d.mant + d.plus < (1 << 61)src/libcore/num/flt2dec/strategy/grisu.rsassertion failed: !buf.is_empty()assertion failed: d.mant < (1 << 61)0..src/libcore/num/flt2dec/mod.rsassertion failed: buf[0] > b'0'-+[...]src/libcore/str/mod.rsbyte index  is not a char boundary; it is inside  (bytes ) of `\00\00\00\00\00\00\00\00\00\00\00src/libcore/fmt/mod.rs..\00\01\03\05\05\06\06\03\07\06\08\08\09\11\0a\1c\0b\19\0c\14\0d\12\0e\16\0f\04\10\03\12\12\13\09\16\01\17\05\18\02\19\03\1a\07\1c\02\1d\01\1f\16 \03+\06,\02-\0b.\010\031\022\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\04\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\1d\dd\0e\0fKL\fb\fc./?\5c]_\b5\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11)EIWde\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\04\0d\11EIde\80\81\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\86\89\8b\8c\98\a0\a4\a6\a8\a9\ac\ba\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80\0dmq\de\df\0e\0f\1fno\1c\1d_}~\ae\af\bb\bc\fa\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96\97\c9\ff/_&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\ff\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91\fe\ffSgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab5\1e\15\80\e0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\08\02\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05:\03\11\07\06\05\10\08V\07\02\07\15\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%\0d\06L m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\15\0b\17\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06\1fAL\04-\03t\08<\03\0f\03<\078\08*\06\82\ff\11\18\08/\11-\03 \10!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\af1t\0c\80\d6\1a\0c\05\80\ff\05\80\b6\05$\0c\9b\c6\0a\d20\10\84\8d\037\09\81\5c\14\80\b8\08\80\ba=5\04\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09F\0a\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a5\11\81m\10x(*\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00\06\01\01\03\01\04\02\08\08\09\02\0a\05\0b\02\10\01\11\04\12\05\13\11\14\02\15\02\17\02\1a\02\1c\05\1d\08$\01j\03k\02\bc\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e8\02\ee \f0\04\f9\04\0c';>NO\8f\9e\9e\9f\06\07\096=>V\f3\d0\d1\04\14\1867VW\bd5\ce\cf\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOdeZ\5c\b6\b7\1b\1c\84\85\097\90\91\a8\07\0a;>fi\8f\92o_\ee\efZb\9a\9b'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0?qr{^\22{\05\03\04-\03e\04\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0b\01\80\90\817\09\16\0a\08\80\989\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&\1f\80\81(\08*\80\a6N\04\1e\0fC\0e\19\07\0a\06G\09'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8b_!H\08\0a\80\a6^\22E\0b\0a\06\0d\138\08\0a6,\04\10\80\c0<dS\0c\01\81\00H\08S\1d9\81\07F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\81\07\83\9afu\0b\80\c4\8a\bc\84/\8f\d1\82G\a1\b9\829\07*\04\02`&\0aF\0a(\05\13\82\b0[eE\0b/\10\11@\02\1e\97\f2\0e\82\f3\a5\0d\81\1fQ\81\8c\89\04k\05\0d\03\09\07\10\93`\80\f6\0as\08n\17F\80\9a\14\0cW\09\19\80\87\81G\03\85B\0f\15\85P+\87\d5\80\d7)K\05\0a\04\02\83\11D\81K<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\0d\03\5c\04=9\1d\0d,\04\09\07\02\0e\06\80\9a\83\d5\0b\0d\03\0a\06t\0cY'\0c\048\08\0a\06(\08\1eR\0c\04g\03)\0d\0a\06\03\0d0`\0e\85\92src/libcore/unicode/bool_trie.rs\00\00\c0\fb\ef>\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f8\ff\fb\ff\ff\ff\07\00\00\00\00\00\00\14\fe!\fe\00\0c\00\00\00\02\00\00\00\00\00\00P\1e \80\00\0c\00\00@\06\00\00\00\00\00\00\10\869\02\00\00\00#\00\be!\00\00\0c\00\00\fc\02\00\00\00\00\00\00\d0\1e \c0\00\0c\00\00\00\04\00\00\00\00\00\00@\01 \80\00\00\00\00\00\11\00\00\00\00\00\00\c0\c1=`\00\0c\00\00\00\02\00\00\00\00\00\00\90D0`\00\0c\00\00\00\03\00\00\00\00\00\00X\1e \80\00\0c\00\00\00\00\84\5c\80\00\00\00\00\00\00\00\00\00\00\f2\07\80\7f\00\00\00\00\00\00\00\00\00\00\00\00\f2\1b\00?\00\00\00\00\00\00\00\00\00\03\00\00\a0\02\00\00\00\00\00\00\fe\7f\df\e0\ff\fe\ff\ff\ff\1f@\00\00\00\00\00\00\00\00\00\00\00\00\e0\fdf\00\00\00\c3\01\00\1e\00d \00 \00\00\00\00\00\00\00\e0\00\00\00\00\00\00\1c\00\00\00\1c\00\00\00\0c\00\00\00\0c\00\00\00\00\00\00\00\b0?@\fe\0f \00\00\00\00\008\00\00\00\00\00\00`\00\00\00\00\02\00\00\00\00\00\00\87\01\04\0e\00\00\80\09\00\00\00\00\00\00@\7f\e5\1f\f8\9f\00\00\00\00\00\00\ff\7f\0f\00\00\00\00\00\d0\17\04\00\00\00\00\f8\0f\00\03\00\00\00<;\00\00\00\00\00\00@\a3\03\00\00\00\00\00\00\f0\cf\00\00\00\f7\ff\fd!\10\03\ff\ff\ff\ff\ff\ff\ff\fb\00\10\00\00\00\00\00\00\00\00\ff\ff\ff\ff\01\00\00\00\00\00\00\80\03\00\00\00\00\00\00\00\00\80\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\fc\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\80\f7?\00\00\00\c0\00\00\00\00\00\00\00\00\00\00\03\00D\08\00\00`\00\00\000\00\00\00\ff\ff\03\80\00\00\00\00\c0?\00\00\80\ff\03\00\00\00\00\00\07\00\00\00\00\00\c8\13\00\00\00\00 \00\00\00\00\00\00\00\00~f\00\08\10\00\00\00\00\00\10\00\00\00\00\00\00\9d\c1\02\00\00\00\000@\00\00\00\00\00 !\00\00\00\00\00@\00\00\00\00\ff\ff\00\00\ff\ff\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\05\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\07\00\00\08\09\0a\00\0b\0c\0d\0e\0f\00\00\10\11\12\00\00\13\14\15\16\00\00\17\18\19\1a\1b\00\1c\00\00\00\1d\00\00\00\00\00\00\00\1e\1f \00\00\00\00\00!\00\22\00#$%\00\00\00\00&\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00'(\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00+,\00\00-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00./0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\002\003\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0045\00\005556\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\01\00\00\00\00\00\00\00\00\00\c0\07n\f0\00\00\00\00\00\87\00\00\00\00`\00\00\00\00\00\00\00\f0\00\00\00\c0\ff\01\00\00\00\00\00\02\00\00\00\00\00\00\ff\7f\00\00\00\00\00\00\80\03\00\00\00\00\00x\06\07\00\00\00\80\ef\1f\00\00\00\00\00\00\00\08\00\03\00\00\00\00\00\c0\7f\00\1e\00\00\00\00\00\00\00\00\00\00\00\80\d3@\00\00\00\80\f8\07\00\00\03\00\00\00\00\00\00X\01\00\80\00\c0\1f\1f\00\00\00\00\00\00\00\00\ff\5c\00\00@\00\00\00\00\00\00\00\00\00\00\f9\a5\0d\00\00\00\00\00\00\00\00\00\00\00\00\80<\b0\01\00\000\00\00\00\00\00\00\00\00\00\00\f8\a7\01\00\00\00\00\00\00\00\00\00\00\00\00(\bf\00\00\00\00\e0\bc\0f\00\00\00\00\00\00\00\80\ff\06\fe\07\00\00\00\00\f8y\80\00~\0e\00\00\00\00\00\fc\7f\03\00\00\00\00\00\00\00\00\00\00\7f\bf\00\00\fc\ff\ff\fcm\00\00\00\00\00\00\00~\b4\bf\00\00\00\00\00\00\00\00\00\a3\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\1f\00\00\00\00\00\00\00\7f\00\00\80\07\00\00\00\00\00\00\00\00`\00\00\00\00\00\00\00\00\a0\c3\07\f8\e7\0f\00\00\00<\00\00\1c\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\7f\f8\ff\ff\ff\ff\ff\1f \00\10\00\00\f8\fe\ff\00\00\7f\ff\ff\f9\db\07\00\00\00\00\7f\00\00\00\00\00\f0\07\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00called `Option::unwrap()` on a `None` valuesrc/libcore/option.rsbegin <= end ( <= ) when slicing ` is out of bounds of `falsetrue     {,\0a:   }\0a}()NaNinf00000000000000000000000000000000000000000000000000000000000000000assertion failed: buf.len() >= maxlenError")
  (data (i32.const 1055984) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (i32.const 1057032) "\01\00\00\00\13\00\10\00\12\00\00\00%\00\10\00J\00\00\00d\02\00\00\12\00\00\00\16\00\00\00\00\00\00\00\01\00\00\00\17\00\00\00\9d\00\10\004\00\00\00\f5\0e\10\00-\00\00\00\22\0f\10\00\0c\00\00\00\9a\00\10\00\03\00\00\00j\0c\10\00\18\00\00\00\ac\07\00\00\09\00\00\00\d1\00\10\00$\00\00\00%\04\10\00\17\00\00\00A\02\00\00\09\00\00\00\18\00\00\00\04\00\00\00\04\00\00\00\19\00\00\00\1a\00\00\00\04\00\00\00\04\00\00\00\1b\00\00\00\1c\00\00\00\04\00\00\00\04\00\00\00\1d\00\00\00p\0b\10\00\00\00\00\00q\1c\10\00\02\00\00\00\ba\01\10\00\15\00\00\00\e5\03\00\00\05\00\00\00\1e\00\00\00\04\00\00\00\04\00\00\00\1f\00\00\00 \00\00\00!\00\00\00\22\00\00\00\04\00\00\00\04\00\00\00#\00\00\00p\0b\10\00\00\00\00\00.\02\10\00\1d\00\00\00\15\02\10\00\0e\00\00\00#\02\10\00\0b\00\00\00]\02\10\00\0a\00\00\00\fa\02\10\00\0a\00\00\00\ee\02\10\00\0c\00\00\00\e0\02\10\00\0e\00\00\00\d8\02\10\00\08\00\00\00\d5\02\10\00\03\00\00\00\d1\02\10\00\04\00\00\00\c5\02\10\00\0c\00\00\00\b6\02\10\00\0f\00\00\00\a9\02\10\00\0d\00\00\00\9b\02\10\00\0e\00\00\00\92\02\10\00\09\00\00\00.\0f\10\00\01\00\00\00\89\02\10\00\09\00\00\00.\0f\10\00\01\00\00\00y\02\10\00\10\00\00\00.\0f\10\00\01\00\00\00n\02\10\00\0b\00\00\00.\0f\10\00\01\00\00\00g\02\10\00\07\00\00\00$\00\00\00\00\00\00\00\01\00\00\00%\00\00\00&\00\00\00'\00\00\00(\00\00\00\04\00\00\00\04\00\00\00)\00\00\00*\00\00\00+\00\00\00,\00\00\00\04\00\00\00\04\00\00\00-\00\00\00.\00\00\00\01\00\00\00\01\00\00\00/\00\00\000\00\00\00\0c\00\00\00\04\00\00\001\00\00\00,\00\00\00\04\00\00\00\04\00\00\002\00\00\00,\00\00\00\04\00\00\00\04\00\00\003\00\00\00\14\04\10\00\11\00\00\00%\04\10\00\17\00\00\00\eb\02\00\00\05\00\00\00P\0b\10\00\19\00\00\00\03\01\00\00\15\00\00\00P\0b\10\00\19\00\00\00]\01\00\00<\00\00\00P\0b\10\00\19\00\00\00b\01\00\00\1d\00\00\00p\0b\10\00 \00\00\00\90\0b\10\00\12\00\00\004\00\00\00\00\00\00\00\01\00\00\005\00\00\00\82\0c\10\00\06\00\00\00\88\0c\10\00\22\00\00\00j\0c\10\00\18\00\00\00i\09\00\00\05\00\00\00P\0b\10\00\19\00\00\00\88\00\00\00\15\00\00\00P\0b\10\00\19\00\00\00\cc\00\00\00\15\00\00\00\fe\0c\10\00\1a\00\00\00\18\0d\10\00\19\00\00\00\e1\01\00\00\01\00\00\00\b0\0c\10\00*\00\00\00\99\00\00\00\09\00\00\00\b0\0c\10\00*\00\00\00\cf\00\00\00\0d\00\00\00\e0\0c\10\00\1e\00\00\00\94\00\00\00\0d\00\00\00\e0\0c\10\00\1e\00\00\00\95\00\00\00\1f\00\00\00\e0\0c\10\00\1e\00\00\00\99\00\00\00\0d\00\00\00\e0\0c\10\00\1e\00\00\00\9a\00\00\00\1d\00\00\001\0d\10\00\1d\00\00\00\18\0d\10\00\19\00\00\00\e1\01\00\00\01\00\00\00P\0b\10\00\19\00\00\00\18\01\00\00+\00\00\00P\0b\10\00\19\00\00\00\18\01\00\00\15\00\00\00P\0b\10\00\19\00\00\00\1b\01\00\00\15\00\00\00P\0b\10\00\19\00\00\00\22\01\00\00$\00\00\00P\0b\10\00\19\00\00\00$\01\00\00\19\00\00\00P\0b\10\00\19\00\00\00)\01\00\00)\00\00\00\e5\0d\10\00\1c\00\00\00N\0d\10\00*\00\00\00\dc\00\00\00\05\00\00\00\af\0d\10\006\00\00\00N\0d\10\00*\00\00\00\dd\00\00\00\05\00\00\00x\0d\10\007\00\00\00N\0d\10\00*\00\00\00\de\00\00\00\05\00\00\00k\0e\10\00\1b\00\00\00\18\0d\10\00\19\00\00\00\e1\01\00\00\01\00\00\00\b0\0c\10\00*\00\00\00\22\01\00\00\0d\00\00\00\b0\0c\10\00*\00\00\00,\01\00\004\00\00\00H\0e\10\00\16\00\00\00^\0e\10\00\0d\00\00\00j\0c\10\00\18\00\00\00o\09\00\00\05\00\00\00\90\0e\10\00)\00\00\00x\00\00\00\15\00\00\00\01\0e\10\00\1c\00\00\00{\0f\10\00)\00\00\00\9b\00\00\00\05\00\00\00\af\0d\10\006\00\00\00{\0f\10\00)\00\00\00\9e\00\00\00\05\00\00\00x\0d\10\007\00\00\00{\0f\10\00)\00\00\00\9f\00\00\00\05\00\00\00N\0f\10\00-\00\00\00{\0f\10\00)\00\00\00\a1\00\00\00\05\00\00\001\0f\10\00\1d\00\00\00\d9\0e\10\00\1c\00\00\00J\00\00\00\09\00\00\00\f5\0e\10\00-\00\00\00\22\0f\10\00\0c\00\00\00.\0f\10\00\01\00\00\00\d9\0e\10\00\1c\00\00\00L\00\00\00\09\00\00\00\c0\0e\10\00\19\00\00\00\90\0e\10\00)\00\00\00\fc\00\00\00\11\00\00\00\90\0e\10\00)\00\00\00*\01\00\00\09\00\00\00\01\0e\10\00\1c\00\00\00{\0f\10\00)\00\00\00\b1\01\00\00\05\00\00\00\c5\0f\10\00$\00\00\00{\0f\10\00)\00\00\00\b2\01\00\00\05\00\00\00\c0\0e\10\00\19\00\00\00\90\0e\10\00)\00\00\00\f3\01\00\00\11\00\00\00\90\0e\10\00)\00\00\00)\02\00\00\09\00\00\00\a4\0f\10\00!\00\00\00\ec\0f\10\00\1e\00\00\00\05\01\00\00\05\00\00\00\0a\10\10\00\1f\00\00\00\ec\0f\10\00\1e\00\00\00\06\01\00\00\05\00\00\00F\10\10\00\0b\00\00\00J\1c\10\00\16\00\00\00.\0f\10\00\01\00\00\000\10\10\00\16\00\00\00\ea\07\00\00\09\00\00\00(\1c\10\00\0e\00\00\006\1c\10\00\04\00\00\00:\1c\10\00\10\00\00\00.\0f\10\00\01\00\00\000\10\10\00\16\00\00\00\ee\07\00\00\05\00\00\00\e8\1b\10\00+\00\00\00\13\1c\10\00\15\00\00\00Y\01\00\00\15\00\00\00F\10\10\00\0b\00\00\00Q\10\10\00&\00\00\00w\10\10\00\08\00\00\00\7f\10\10\00\06\00\00\00.\0f\10\00\01\00\00\000\10\10\00\16\00\00\00\fb\07\00\00\05\00\00\00p\0b\10\00\00\00\00\00\a6\10\10\00\02\00\00\00\90\10\10\00\16\00\00\00?\04\00\00\11\00\00\00\90\10\10\00\16\00\00\003\04\00\00(\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f8\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\fe\ff\ff\ff\ff\bf\b6\00\00\00\00\00\00\00\00\00\ff\07\00\00\00\00\00\f8\ff\ff\00\00\01\00\00\00\00\00\00\00\00\00\00\00\c0\9f\9f=\00\00\00\00\02\00\00\00\ff\ff\ff\07\00\00\00\00\00\00\00\00\00\00\c0\ff\01\00\00\00\00\00\00\f8\0f \e0\15\10\00J\00\00\000\18\10\00\00\02\00\000\1a\10\007\00\00\00\00\01\02\03\04\05\06\07\08\09\08\0a\0b\0c\0d\0e\0f\10\11\12\13\14\02\15\16\17\18\19\1a\1b\1c\1d\1e\1f \02\02\02\02\02\02\02\02\02\02!\02\02\02\02\02\02\02\02\02\02\02\02\02\02\22#$%&\02'\02(\02\02\02)*+\02,-./0\02\021\02\02\022\02\02\02\02\02\02\02\023\02\024\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\025\026\027\02\02\02\02\02\02\02\028\029\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02:;<\02\02\02\02=\02\02>?@ABCDEF\02\02\02G\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02H\02\02\02\02\02\02\02\02\02\02\02I\02\02\02\02\02;\02\00\01\02\02\02\02\03\02\02\02\02\04\02\05\06\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\07\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\c0\15\10\00 \00\00\00'\00\00\00\19\00\00\00\c0\15\10\00 \00\00\00(\00\00\00 \00\00\00\c0\15\10\00 \00\00\00*\00\00\00\19\00\00\00\c0\15\10\00 \00\00\00+\00\00\00\18\00\00\00\c0\15\10\00 \00\00\00,\00\00\00 \00\00\006\00\00\00\0c\00\00\00\04\00\00\007\00\00\008\00\00\009\00\00\00p\0b\10\00\00\00\00\00s\1c\10\00\01\00\00\00q\1c\10\00\02\00\00\00:\00\00\00\04\00\00\00\04\00\00\00;\00\00\00<\00\00\00=\00\00\00\c1\1c\10\00%\00\00\00\ec\0f\10\00\1e\00\00\00p\02\00\00\0d\00\00\00"))
