; ModuleID = 'obj\Release\130\android\compressed_assemblies.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\compressed_assemblies.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.CompressedAssemblyDescriptor = type {
	i32,; uint32_t uncompressed_file_size
	i8,; bool loaded
	i8*; uint8_t* data
}

%struct.CompressedAssemblies = type {
	i32,; uint32_t count
	%struct.CompressedAssemblyDescriptor*; CompressedAssemblyDescriptor* descriptors
}
@__CompressedAssemblyDescriptor_data_0 = internal global [12800 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_1 = internal global [29216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_2 = internal global [82864 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_3 = internal global [49584 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_4 = internal global [214448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_5 = internal global [33029512 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_6 = internal global [252352 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_7 = internal global [14728 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_8 = internal global [268728 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_9 = internal global [1095088 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_10 = internal global [39864 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_11 = internal global [16264 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_12 = internal global [1936304 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_13 = internal global [171400 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_14 = internal global [28600 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_15 = internal global [125880 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_16 = internal global [14744 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_17 = internal global [292792 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_18 = internal global [22464 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_19 = internal global [129968 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_20 = internal global [18024 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_21 = internal global [876992 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_22 = internal global [22424 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_23 = internal global [228784 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_24 = internal global [15240 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_25 = internal global [42432 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_26 = internal global [224704 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_27 = internal global [147904 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_28 = internal global [2452920 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_29 = internal global [1970112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_30 = internal global [146840 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_31 = internal global [35224 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_32 = internal global [15240 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_33 = internal global [95632 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_34 = internal global [1106432 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_35 = internal global [36248 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_36 = internal global [27032 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_37 = internal global [22920 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_38 = internal global [289168 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_39 = internal global [30600 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_40 = internal global [78216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_41 = internal global [35208 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_42 = internal global [898448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_43 = internal global [621448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_44 = internal global [102784 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_45 = internal global [214456 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_46 = internal global [1865096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_47 = internal global [59808 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_48 = internal global [66496 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_49 = internal global [28040 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_50 = internal global [62368 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_51 = internal global [54664 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_52 = internal global [25504 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_53 = internal global [254368 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_54 = internal global [318360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_55 = internal global [24480 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_56 = internal global [34696 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_57 = internal global [19856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_58 = internal global [14728 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_59 = internal global [61832 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_60 = internal global [32696 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_61 = internal global [24976 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_62 = internal global [21944 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_63 = internal global [31640 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_64 = internal global [65440 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_65 = internal global [38328 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_66 = internal global [65464 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_67 = internal global [19840 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_68 = internal global [392592 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_69 = internal global [15776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_70 = internal global [91016 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_71 = internal global [77200 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_72 = internal global [36240 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_73 = internal global [267264 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_74 = internal global [22928 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_75 = internal global [49048 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_76 = internal global [591752 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_77 = internal global [29080 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_78 = internal global [34720 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_79 = internal global [44424 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_80 = internal global [30616 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_81 = internal global [67472 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_82 = internal global [19848 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_83 = internal global [141312 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_84 = internal global [47008 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_85 = internal global [33728 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_86 = internal global [111000 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_87 = internal global [86944 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_88 = internal global [54160 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_89 = internal global [218544 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_90 = internal global [1238040 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_91 = internal global [1053696 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_92 = internal global [349216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_93 = internal global [115240 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_94 = internal global [1714176 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_95 = internal global [23432 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_96 = internal global [152984 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_97 = internal global [15256 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_98 = internal global [15256 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_99 = internal global [15240 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_100 = internal global [2214288 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_101 = internal global [26512 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_102 = internal global [317320 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_103 = internal global [182784 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_104 = internal global [121856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_105 = internal global [4515248 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_106 = internal global [100744 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_107 = internal global [529408 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_108 = internal global [102912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_109 = internal global [468480 x i8] zeroinitializer, align 1


; Compressed assembly data storage
@compressed_assembly_descriptors = internal global [110 x %struct.CompressedAssemblyDescriptor] [
	; 0
	%struct.CompressedAssemblyDescriptor {
		i32 12800, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([12800 x i8], [12800 x i8]* @__CompressedAssemblyDescriptor_data_0, i32 0, i32 0); data
	}, 
	; 1
	%struct.CompressedAssemblyDescriptor {
		i32 29216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([29216 x i8], [29216 x i8]* @__CompressedAssemblyDescriptor_data_1, i32 0, i32 0); data
	}, 
	; 2
	%struct.CompressedAssemblyDescriptor {
		i32 82864, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([82864 x i8], [82864 x i8]* @__CompressedAssemblyDescriptor_data_2, i32 0, i32 0); data
	}, 
	; 3
	%struct.CompressedAssemblyDescriptor {
		i32 49584, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([49584 x i8], [49584 x i8]* @__CompressedAssemblyDescriptor_data_3, i32 0, i32 0); data
	}, 
	; 4
	%struct.CompressedAssemblyDescriptor {
		i32 214448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([214448 x i8], [214448 x i8]* @__CompressedAssemblyDescriptor_data_4, i32 0, i32 0); data
	}, 
	; 5
	%struct.CompressedAssemblyDescriptor {
		i32 33029512, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([33029512 x i8], [33029512 x i8]* @__CompressedAssemblyDescriptor_data_5, i32 0, i32 0); data
	}, 
	; 6
	%struct.CompressedAssemblyDescriptor {
		i32 252352, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([252352 x i8], [252352 x i8]* @__CompressedAssemblyDescriptor_data_6, i32 0, i32 0); data
	}, 
	; 7
	%struct.CompressedAssemblyDescriptor {
		i32 14728, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14728 x i8], [14728 x i8]* @__CompressedAssemblyDescriptor_data_7, i32 0, i32 0); data
	}, 
	; 8
	%struct.CompressedAssemblyDescriptor {
		i32 268728, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([268728 x i8], [268728 x i8]* @__CompressedAssemblyDescriptor_data_8, i32 0, i32 0); data
	}, 
	; 9
	%struct.CompressedAssemblyDescriptor {
		i32 1095088, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1095088 x i8], [1095088 x i8]* @__CompressedAssemblyDescriptor_data_9, i32 0, i32 0); data
	}, 
	; 10
	%struct.CompressedAssemblyDescriptor {
		i32 39864, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([39864 x i8], [39864 x i8]* @__CompressedAssemblyDescriptor_data_10, i32 0, i32 0); data
	}, 
	; 11
	%struct.CompressedAssemblyDescriptor {
		i32 16264, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16264 x i8], [16264 x i8]* @__CompressedAssemblyDescriptor_data_11, i32 0, i32 0); data
	}, 
	; 12
	%struct.CompressedAssemblyDescriptor {
		i32 1936304, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1936304 x i8], [1936304 x i8]* @__CompressedAssemblyDescriptor_data_12, i32 0, i32 0); data
	}, 
	; 13
	%struct.CompressedAssemblyDescriptor {
		i32 171400, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([171400 x i8], [171400 x i8]* @__CompressedAssemblyDescriptor_data_13, i32 0, i32 0); data
	}, 
	; 14
	%struct.CompressedAssemblyDescriptor {
		i32 28600, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([28600 x i8], [28600 x i8]* @__CompressedAssemblyDescriptor_data_14, i32 0, i32 0); data
	}, 
	; 15
	%struct.CompressedAssemblyDescriptor {
		i32 125880, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([125880 x i8], [125880 x i8]* @__CompressedAssemblyDescriptor_data_15, i32 0, i32 0); data
	}, 
	; 16
	%struct.CompressedAssemblyDescriptor {
		i32 14744, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14744 x i8], [14744 x i8]* @__CompressedAssemblyDescriptor_data_16, i32 0, i32 0); data
	}, 
	; 17
	%struct.CompressedAssemblyDescriptor {
		i32 292792, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([292792 x i8], [292792 x i8]* @__CompressedAssemblyDescriptor_data_17, i32 0, i32 0); data
	}, 
	; 18
	%struct.CompressedAssemblyDescriptor {
		i32 22464, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([22464 x i8], [22464 x i8]* @__CompressedAssemblyDescriptor_data_18, i32 0, i32 0); data
	}, 
	; 19
	%struct.CompressedAssemblyDescriptor {
		i32 129968, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([129968 x i8], [129968 x i8]* @__CompressedAssemblyDescriptor_data_19, i32 0, i32 0); data
	}, 
	; 20
	%struct.CompressedAssemblyDescriptor {
		i32 18024, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([18024 x i8], [18024 x i8]* @__CompressedAssemblyDescriptor_data_20, i32 0, i32 0); data
	}, 
	; 21
	%struct.CompressedAssemblyDescriptor {
		i32 876992, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([876992 x i8], [876992 x i8]* @__CompressedAssemblyDescriptor_data_21, i32 0, i32 0); data
	}, 
	; 22
	%struct.CompressedAssemblyDescriptor {
		i32 22424, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([22424 x i8], [22424 x i8]* @__CompressedAssemblyDescriptor_data_22, i32 0, i32 0); data
	}, 
	; 23
	%struct.CompressedAssemblyDescriptor {
		i32 228784, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([228784 x i8], [228784 x i8]* @__CompressedAssemblyDescriptor_data_23, i32 0, i32 0); data
	}, 
	; 24
	%struct.CompressedAssemblyDescriptor {
		i32 15240, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15240 x i8], [15240 x i8]* @__CompressedAssemblyDescriptor_data_24, i32 0, i32 0); data
	}, 
	; 25
	%struct.CompressedAssemblyDescriptor {
		i32 42432, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([42432 x i8], [42432 x i8]* @__CompressedAssemblyDescriptor_data_25, i32 0, i32 0); data
	}, 
	; 26
	%struct.CompressedAssemblyDescriptor {
		i32 224704, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([224704 x i8], [224704 x i8]* @__CompressedAssemblyDescriptor_data_26, i32 0, i32 0); data
	}, 
	; 27
	%struct.CompressedAssemblyDescriptor {
		i32 147904, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([147904 x i8], [147904 x i8]* @__CompressedAssemblyDescriptor_data_27, i32 0, i32 0); data
	}, 
	; 28
	%struct.CompressedAssemblyDescriptor {
		i32 2452920, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2452920 x i8], [2452920 x i8]* @__CompressedAssemblyDescriptor_data_28, i32 0, i32 0); data
	}, 
	; 29
	%struct.CompressedAssemblyDescriptor {
		i32 1970112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1970112 x i8], [1970112 x i8]* @__CompressedAssemblyDescriptor_data_29, i32 0, i32 0); data
	}, 
	; 30
	%struct.CompressedAssemblyDescriptor {
		i32 146840, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([146840 x i8], [146840 x i8]* @__CompressedAssemblyDescriptor_data_30, i32 0, i32 0); data
	}, 
	; 31
	%struct.CompressedAssemblyDescriptor {
		i32 35224, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([35224 x i8], [35224 x i8]* @__CompressedAssemblyDescriptor_data_31, i32 0, i32 0); data
	}, 
	; 32
	%struct.CompressedAssemblyDescriptor {
		i32 15240, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15240 x i8], [15240 x i8]* @__CompressedAssemblyDescriptor_data_32, i32 0, i32 0); data
	}, 
	; 33
	%struct.CompressedAssemblyDescriptor {
		i32 95632, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([95632 x i8], [95632 x i8]* @__CompressedAssemblyDescriptor_data_33, i32 0, i32 0); data
	}, 
	; 34
	%struct.CompressedAssemblyDescriptor {
		i32 1106432, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1106432 x i8], [1106432 x i8]* @__CompressedAssemblyDescriptor_data_34, i32 0, i32 0); data
	}, 
	; 35
	%struct.CompressedAssemblyDescriptor {
		i32 36248, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36248 x i8], [36248 x i8]* @__CompressedAssemblyDescriptor_data_35, i32 0, i32 0); data
	}, 
	; 36
	%struct.CompressedAssemblyDescriptor {
		i32 27032, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([27032 x i8], [27032 x i8]* @__CompressedAssemblyDescriptor_data_36, i32 0, i32 0); data
	}, 
	; 37
	%struct.CompressedAssemblyDescriptor {
		i32 22920, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([22920 x i8], [22920 x i8]* @__CompressedAssemblyDescriptor_data_37, i32 0, i32 0); data
	}, 
	; 38
	%struct.CompressedAssemblyDescriptor {
		i32 289168, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([289168 x i8], [289168 x i8]* @__CompressedAssemblyDescriptor_data_38, i32 0, i32 0); data
	}, 
	; 39
	%struct.CompressedAssemblyDescriptor {
		i32 30600, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([30600 x i8], [30600 x i8]* @__CompressedAssemblyDescriptor_data_39, i32 0, i32 0); data
	}, 
	; 40
	%struct.CompressedAssemblyDescriptor {
		i32 78216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([78216 x i8], [78216 x i8]* @__CompressedAssemblyDescriptor_data_40, i32 0, i32 0); data
	}, 
	; 41
	%struct.CompressedAssemblyDescriptor {
		i32 35208, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([35208 x i8], [35208 x i8]* @__CompressedAssemblyDescriptor_data_41, i32 0, i32 0); data
	}, 
	; 42
	%struct.CompressedAssemblyDescriptor {
		i32 898448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([898448 x i8], [898448 x i8]* @__CompressedAssemblyDescriptor_data_42, i32 0, i32 0); data
	}, 
	; 43
	%struct.CompressedAssemblyDescriptor {
		i32 621448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([621448 x i8], [621448 x i8]* @__CompressedAssemblyDescriptor_data_43, i32 0, i32 0); data
	}, 
	; 44
	%struct.CompressedAssemblyDescriptor {
		i32 102784, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([102784 x i8], [102784 x i8]* @__CompressedAssemblyDescriptor_data_44, i32 0, i32 0); data
	}, 
	; 45
	%struct.CompressedAssemblyDescriptor {
		i32 214456, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([214456 x i8], [214456 x i8]* @__CompressedAssemblyDescriptor_data_45, i32 0, i32 0); data
	}, 
	; 46
	%struct.CompressedAssemblyDescriptor {
		i32 1865096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1865096 x i8], [1865096 x i8]* @__CompressedAssemblyDescriptor_data_46, i32 0, i32 0); data
	}, 
	; 47
	%struct.CompressedAssemblyDescriptor {
		i32 59808, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([59808 x i8], [59808 x i8]* @__CompressedAssemblyDescriptor_data_47, i32 0, i32 0); data
	}, 
	; 48
	%struct.CompressedAssemblyDescriptor {
		i32 66496, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([66496 x i8], [66496 x i8]* @__CompressedAssemblyDescriptor_data_48, i32 0, i32 0); data
	}, 
	; 49
	%struct.CompressedAssemblyDescriptor {
		i32 28040, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([28040 x i8], [28040 x i8]* @__CompressedAssemblyDescriptor_data_49, i32 0, i32 0); data
	}, 
	; 50
	%struct.CompressedAssemblyDescriptor {
		i32 62368, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([62368 x i8], [62368 x i8]* @__CompressedAssemblyDescriptor_data_50, i32 0, i32 0); data
	}, 
	; 51
	%struct.CompressedAssemblyDescriptor {
		i32 54664, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([54664 x i8], [54664 x i8]* @__CompressedAssemblyDescriptor_data_51, i32 0, i32 0); data
	}, 
	; 52
	%struct.CompressedAssemblyDescriptor {
		i32 25504, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([25504 x i8], [25504 x i8]* @__CompressedAssemblyDescriptor_data_52, i32 0, i32 0); data
	}, 
	; 53
	%struct.CompressedAssemblyDescriptor {
		i32 254368, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([254368 x i8], [254368 x i8]* @__CompressedAssemblyDescriptor_data_53, i32 0, i32 0); data
	}, 
	; 54
	%struct.CompressedAssemblyDescriptor {
		i32 318360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([318360 x i8], [318360 x i8]* @__CompressedAssemblyDescriptor_data_54, i32 0, i32 0); data
	}, 
	; 55
	%struct.CompressedAssemblyDescriptor {
		i32 24480, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([24480 x i8], [24480 x i8]* @__CompressedAssemblyDescriptor_data_55, i32 0, i32 0); data
	}, 
	; 56
	%struct.CompressedAssemblyDescriptor {
		i32 34696, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([34696 x i8], [34696 x i8]* @__CompressedAssemblyDescriptor_data_56, i32 0, i32 0); data
	}, 
	; 57
	%struct.CompressedAssemblyDescriptor {
		i32 19856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([19856 x i8], [19856 x i8]* @__CompressedAssemblyDescriptor_data_57, i32 0, i32 0); data
	}, 
	; 58
	%struct.CompressedAssemblyDescriptor {
		i32 14728, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14728 x i8], [14728 x i8]* @__CompressedAssemblyDescriptor_data_58, i32 0, i32 0); data
	}, 
	; 59
	%struct.CompressedAssemblyDescriptor {
		i32 61832, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([61832 x i8], [61832 x i8]* @__CompressedAssemblyDescriptor_data_59, i32 0, i32 0); data
	}, 
	; 60
	%struct.CompressedAssemblyDescriptor {
		i32 32696, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([32696 x i8], [32696 x i8]* @__CompressedAssemblyDescriptor_data_60, i32 0, i32 0); data
	}, 
	; 61
	%struct.CompressedAssemblyDescriptor {
		i32 24976, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([24976 x i8], [24976 x i8]* @__CompressedAssemblyDescriptor_data_61, i32 0, i32 0); data
	}, 
	; 62
	%struct.CompressedAssemblyDescriptor {
		i32 21944, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([21944 x i8], [21944 x i8]* @__CompressedAssemblyDescriptor_data_62, i32 0, i32 0); data
	}, 
	; 63
	%struct.CompressedAssemblyDescriptor {
		i32 31640, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([31640 x i8], [31640 x i8]* @__CompressedAssemblyDescriptor_data_63, i32 0, i32 0); data
	}, 
	; 64
	%struct.CompressedAssemblyDescriptor {
		i32 65440, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([65440 x i8], [65440 x i8]* @__CompressedAssemblyDescriptor_data_64, i32 0, i32 0); data
	}, 
	; 65
	%struct.CompressedAssemblyDescriptor {
		i32 38328, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([38328 x i8], [38328 x i8]* @__CompressedAssemblyDescriptor_data_65, i32 0, i32 0); data
	}, 
	; 66
	%struct.CompressedAssemblyDescriptor {
		i32 65464, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([65464 x i8], [65464 x i8]* @__CompressedAssemblyDescriptor_data_66, i32 0, i32 0); data
	}, 
	; 67
	%struct.CompressedAssemblyDescriptor {
		i32 19840, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([19840 x i8], [19840 x i8]* @__CompressedAssemblyDescriptor_data_67, i32 0, i32 0); data
	}, 
	; 68
	%struct.CompressedAssemblyDescriptor {
		i32 392592, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([392592 x i8], [392592 x i8]* @__CompressedAssemblyDescriptor_data_68, i32 0, i32 0); data
	}, 
	; 69
	%struct.CompressedAssemblyDescriptor {
		i32 15776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15776 x i8], [15776 x i8]* @__CompressedAssemblyDescriptor_data_69, i32 0, i32 0); data
	}, 
	; 70
	%struct.CompressedAssemblyDescriptor {
		i32 91016, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([91016 x i8], [91016 x i8]* @__CompressedAssemblyDescriptor_data_70, i32 0, i32 0); data
	}, 
	; 71
	%struct.CompressedAssemblyDescriptor {
		i32 77200, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([77200 x i8], [77200 x i8]* @__CompressedAssemblyDescriptor_data_71, i32 0, i32 0); data
	}, 
	; 72
	%struct.CompressedAssemblyDescriptor {
		i32 36240, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36240 x i8], [36240 x i8]* @__CompressedAssemblyDescriptor_data_72, i32 0, i32 0); data
	}, 
	; 73
	%struct.CompressedAssemblyDescriptor {
		i32 267264, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([267264 x i8], [267264 x i8]* @__CompressedAssemblyDescriptor_data_73, i32 0, i32 0); data
	}, 
	; 74
	%struct.CompressedAssemblyDescriptor {
		i32 22928, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([22928 x i8], [22928 x i8]* @__CompressedAssemblyDescriptor_data_74, i32 0, i32 0); data
	}, 
	; 75
	%struct.CompressedAssemblyDescriptor {
		i32 49048, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([49048 x i8], [49048 x i8]* @__CompressedAssemblyDescriptor_data_75, i32 0, i32 0); data
	}, 
	; 76
	%struct.CompressedAssemblyDescriptor {
		i32 591752, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([591752 x i8], [591752 x i8]* @__CompressedAssemblyDescriptor_data_76, i32 0, i32 0); data
	}, 
	; 77
	%struct.CompressedAssemblyDescriptor {
		i32 29080, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([29080 x i8], [29080 x i8]* @__CompressedAssemblyDescriptor_data_77, i32 0, i32 0); data
	}, 
	; 78
	%struct.CompressedAssemblyDescriptor {
		i32 34720, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([34720 x i8], [34720 x i8]* @__CompressedAssemblyDescriptor_data_78, i32 0, i32 0); data
	}, 
	; 79
	%struct.CompressedAssemblyDescriptor {
		i32 44424, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([44424 x i8], [44424 x i8]* @__CompressedAssemblyDescriptor_data_79, i32 0, i32 0); data
	}, 
	; 80
	%struct.CompressedAssemblyDescriptor {
		i32 30616, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([30616 x i8], [30616 x i8]* @__CompressedAssemblyDescriptor_data_80, i32 0, i32 0); data
	}, 
	; 81
	%struct.CompressedAssemblyDescriptor {
		i32 67472, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([67472 x i8], [67472 x i8]* @__CompressedAssemblyDescriptor_data_81, i32 0, i32 0); data
	}, 
	; 82
	%struct.CompressedAssemblyDescriptor {
		i32 19848, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([19848 x i8], [19848 x i8]* @__CompressedAssemblyDescriptor_data_82, i32 0, i32 0); data
	}, 
	; 83
	%struct.CompressedAssemblyDescriptor {
		i32 141312, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([141312 x i8], [141312 x i8]* @__CompressedAssemblyDescriptor_data_83, i32 0, i32 0); data
	}, 
	; 84
	%struct.CompressedAssemblyDescriptor {
		i32 47008, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([47008 x i8], [47008 x i8]* @__CompressedAssemblyDescriptor_data_84, i32 0, i32 0); data
	}, 
	; 85
	%struct.CompressedAssemblyDescriptor {
		i32 33728, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([33728 x i8], [33728 x i8]* @__CompressedAssemblyDescriptor_data_85, i32 0, i32 0); data
	}, 
	; 86
	%struct.CompressedAssemblyDescriptor {
		i32 111000, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([111000 x i8], [111000 x i8]* @__CompressedAssemblyDescriptor_data_86, i32 0, i32 0); data
	}, 
	; 87
	%struct.CompressedAssemblyDescriptor {
		i32 86944, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([86944 x i8], [86944 x i8]* @__CompressedAssemblyDescriptor_data_87, i32 0, i32 0); data
	}, 
	; 88
	%struct.CompressedAssemblyDescriptor {
		i32 54160, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([54160 x i8], [54160 x i8]* @__CompressedAssemblyDescriptor_data_88, i32 0, i32 0); data
	}, 
	; 89
	%struct.CompressedAssemblyDescriptor {
		i32 218544, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([218544 x i8], [218544 x i8]* @__CompressedAssemblyDescriptor_data_89, i32 0, i32 0); data
	}, 
	; 90
	%struct.CompressedAssemblyDescriptor {
		i32 1238040, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1238040 x i8], [1238040 x i8]* @__CompressedAssemblyDescriptor_data_90, i32 0, i32 0); data
	}, 
	; 91
	%struct.CompressedAssemblyDescriptor {
		i32 1053696, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1053696 x i8], [1053696 x i8]* @__CompressedAssemblyDescriptor_data_91, i32 0, i32 0); data
	}, 
	; 92
	%struct.CompressedAssemblyDescriptor {
		i32 349216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([349216 x i8], [349216 x i8]* @__CompressedAssemblyDescriptor_data_92, i32 0, i32 0); data
	}, 
	; 93
	%struct.CompressedAssemblyDescriptor {
		i32 115240, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([115240 x i8], [115240 x i8]* @__CompressedAssemblyDescriptor_data_93, i32 0, i32 0); data
	}, 
	; 94
	%struct.CompressedAssemblyDescriptor {
		i32 1714176, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1714176 x i8], [1714176 x i8]* @__CompressedAssemblyDescriptor_data_94, i32 0, i32 0); data
	}, 
	; 95
	%struct.CompressedAssemblyDescriptor {
		i32 23432, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([23432 x i8], [23432 x i8]* @__CompressedAssemblyDescriptor_data_95, i32 0, i32 0); data
	}, 
	; 96
	%struct.CompressedAssemblyDescriptor {
		i32 152984, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([152984 x i8], [152984 x i8]* @__CompressedAssemblyDescriptor_data_96, i32 0, i32 0); data
	}, 
	; 97
	%struct.CompressedAssemblyDescriptor {
		i32 15256, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15256 x i8], [15256 x i8]* @__CompressedAssemblyDescriptor_data_97, i32 0, i32 0); data
	}, 
	; 98
	%struct.CompressedAssemblyDescriptor {
		i32 15256, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15256 x i8], [15256 x i8]* @__CompressedAssemblyDescriptor_data_98, i32 0, i32 0); data
	}, 
	; 99
	%struct.CompressedAssemblyDescriptor {
		i32 15240, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15240 x i8], [15240 x i8]* @__CompressedAssemblyDescriptor_data_99, i32 0, i32 0); data
	}, 
	; 100
	%struct.CompressedAssemblyDescriptor {
		i32 2214288, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2214288 x i8], [2214288 x i8]* @__CompressedAssemblyDescriptor_data_100, i32 0, i32 0); data
	}, 
	; 101
	%struct.CompressedAssemblyDescriptor {
		i32 26512, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26512 x i8], [26512 x i8]* @__CompressedAssemblyDescriptor_data_101, i32 0, i32 0); data
	}, 
	; 102
	%struct.CompressedAssemblyDescriptor {
		i32 317320, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([317320 x i8], [317320 x i8]* @__CompressedAssemblyDescriptor_data_102, i32 0, i32 0); data
	}, 
	; 103
	%struct.CompressedAssemblyDescriptor {
		i32 182784, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([182784 x i8], [182784 x i8]* @__CompressedAssemblyDescriptor_data_103, i32 0, i32 0); data
	}, 
	; 104
	%struct.CompressedAssemblyDescriptor {
		i32 121856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([121856 x i8], [121856 x i8]* @__CompressedAssemblyDescriptor_data_104, i32 0, i32 0); data
	}, 
	; 105
	%struct.CompressedAssemblyDescriptor {
		i32 4515248, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4515248 x i8], [4515248 x i8]* @__CompressedAssemblyDescriptor_data_105, i32 0, i32 0); data
	}, 
	; 106
	%struct.CompressedAssemblyDescriptor {
		i32 100744, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([100744 x i8], [100744 x i8]* @__CompressedAssemblyDescriptor_data_106, i32 0, i32 0); data
	}, 
	; 107
	%struct.CompressedAssemblyDescriptor {
		i32 529408, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([529408 x i8], [529408 x i8]* @__CompressedAssemblyDescriptor_data_107, i32 0, i32 0); data
	}, 
	; 108
	%struct.CompressedAssemblyDescriptor {
		i32 102912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([102912 x i8], [102912 x i8]* @__CompressedAssemblyDescriptor_data_108, i32 0, i32 0); data
	}, 
	; 109
	%struct.CompressedAssemblyDescriptor {
		i32 468480, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([468480 x i8], [468480 x i8]* @__CompressedAssemblyDescriptor_data_109, i32 0, i32 0); data
	}
], align 4; end of 'compressed_assembly_descriptors' array


; compressed_assemblies
@compressed_assemblies = local_unnamed_addr global %struct.CompressedAssemblies {
	i32 110, ; count
	%struct.CompressedAssemblyDescriptor* getelementptr inbounds ([110 x %struct.CompressedAssemblyDescriptor], [110 x %struct.CompressedAssemblyDescriptor]* @compressed_assembly_descriptors, i32 0, i32 0); descriptors
}, align 4


!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
