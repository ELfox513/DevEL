.class public final enum Lnet/bytebuddy/utility/JavaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaType$LatentTypeWithSimpleName;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/JavaType;

.field public static final enum ACCESS_CONTROL_CONTEXT:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CALL_SITE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CLASS_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CONSTABLE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CONSTANT_BOOTSTRAPS:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CONSTANT_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum DIRECT_METHOD_HANDLE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum DYNAMIC_CONSTANT_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum EXECUTABLE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLES:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_TYPE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum MODULE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum OBJECT_METHODS:Lnet/bytebuddy/utility/JavaType;

.field public static final enum PARAMETER:Lnet/bytebuddy/utility/JavaType;

.field public static final enum RECORD:Lnet/bytebuddy/utility/JavaType;

.field public static final enum TYPE_DESCRIPTOR:Lnet/bytebuddy/utility/JavaType;

.field public static final enum TYPE_DESCRIPTOR_OF_FIELD:Lnet/bytebuddy/utility/JavaType;

.field public static final enum TYPE_DESCRIPTOR_OF_METHOD:Lnet/bytebuddy/utility/JavaType;

.field public static final enum VAR_HANDLE:Lnet/bytebuddy/utility/JavaType;


# instance fields
.field private transient synthetic available:Ljava/lang/Boolean;

.field private transient synthetic loaded:Ljava/lang/Class;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public static constructor <clinit>()V
    .locals 49

    new-instance v7, Lnet/bytebuddy/utility/JavaType;

    const/4 v2, 0x0

    const/16 v4, 0x601

    sget-object v15, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v14, 0x0

    new-array v6, v14, [Lnet/bytebuddy/description/type/TypeDefinition;

    const-string v1, "CONSTABLE"

    const-string v3, "java.lang.constant.Constable"

    move-object v0, v7

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v7, Lnet/bytebuddy/utility/JavaType;->CONSTABLE:Lnet/bytebuddy/utility/JavaType;

    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    const/4 v10, 0x1

    const/16 v12, 0x601

    new-array v1, v14, [Lnet/bytebuddy/description/type/TypeDefinition;

    const-string v9, "TYPE_DESCRIPTOR"

    const-string v11, "java.lang.invoke.TypeDescriptor"

    move-object v8, v0

    move-object v13, v15

    const/4 v2, 0x0

    move-object v14, v1

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->TYPE_DESCRIPTOR:Lnet/bytebuddy/utility/JavaType;

    new-instance v1, Lnet/bytebuddy/utility/JavaType;

    const/4 v10, 0x2

    const/4 v3, 0x1

    new-array v14, v3, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    aput-object v4, v14, v2

    const-string v9, "TYPE_DESCRIPTOR_OF_FIELD"

    const-string v11, "java.lang.invoke.TypeDescriptor$OfField"

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v1, Lnet/bytebuddy/utility/JavaType;->TYPE_DESCRIPTOR_OF_FIELD:Lnet/bytebuddy/utility/JavaType;

    new-instance v4, Lnet/bytebuddy/utility/JavaType;

    const/4 v10, 0x3

    new-array v14, v3, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    aput-object v5, v14, v2

    const-string v9, "TYPE_DESCRIPTOR_OF_METHOD"

    const-string v11, "java.lang.invoke.TypeDescriptor$OfMethod"

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v4, Lnet/bytebuddy/utility/JavaType;->TYPE_DESCRIPTOR_OF_METHOD:Lnet/bytebuddy/utility/JavaType;

    new-instance v5, Lnet/bytebuddy/utility/JavaType;

    const/4 v10, 0x4

    new-array v14, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    const-string v9, "CONSTANT_DESCRIPTION"

    const-string v11, "java.lang.constant.ConstantDesc"

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v5, Lnet/bytebuddy/utility/JavaType;->CONSTANT_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    new-instance v6, Lnet/bytebuddy/utility/JavaType;

    const/16 v18, 0x5

    const/16 v20, 0x401

    sget-object v23, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v8, v3, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v5}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v17, "DYNAMIC_CONSTANT_DESCRIPTION"

    const-string v19, "java.lang.constant.DynamicConstantDesc"

    move-object/from16 v16, v6

    move-object/from16 v21, v23

    move-object/from16 v22, v8

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v6, Lnet/bytebuddy/utility/JavaType;->DYNAMIC_CONSTANT_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    new-instance v16, Lnet/bytebuddy/utility/JavaType;

    const/4 v10, 0x6

    const/4 v14, 0x2

    new-array v13, v14, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v5}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    aput-object v8, v13, v2

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    aput-object v8, v13, v3

    const-string v9, "CLASS_DESCRIPTION"

    const-string v11, "java.lang.constant.ClassDesc"

    move-object/from16 v8, v16

    move-object/from16 v17, v13

    move-object v13, v15

    const/4 v3, 0x2

    move-object/from16 v14, v17

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v16, Lnet/bytebuddy/utility/JavaType;->CLASS_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    new-instance v17, Lnet/bytebuddy/utility/JavaType;

    const/4 v10, 0x7

    new-array v14, v3, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v5}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    aput-object v8, v14, v2

    invoke-virtual {v4}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v14, v9

    const-string v9, "METHOD_TYPE_DESCRIPTION"

    const-string v11, "java.lang.constant.MethodTypeDesc"

    move-object/from16 v8, v17

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v17, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    new-instance v19, Lnet/bytebuddy/utility/JavaType;

    const/16 v10, 0x8

    const/4 v8, 0x1

    new-array v14, v8, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v5}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    aput-object v8, v14, v2

    const-string v9, "METHOD_HANDLE_DESCRIPTION"

    const-string v11, "java.lang.constant.MethodHandleDesc"

    move-object/from16 v8, v19

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v19, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    new-instance v20, Lnet/bytebuddy/utility/JavaType;

    const/16 v10, 0x9

    const/4 v8, 0x1

    new-array v14, v8, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual/range {v19 .. v19}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    aput-object v8, v14, v2

    const-string v9, "DIRECT_METHOD_HANDLE_DESCRIPTION"

    const-string v11, "java.lang.constant.DirectMethodHandleDesc"

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v20, Lnet/bytebuddy/utility/JavaType;->DIRECT_METHOD_HANDLE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    new-instance v21, Lnet/bytebuddy/utility/JavaType;

    const/16 v10, 0xa

    const/16 v12, 0x401

    const/4 v8, 0x1

    new-array v14, v8, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v7}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    aput-object v8, v14, v2

    const-string v9, "METHOD_HANDLE"

    const-string v11, "java.lang.invoke.MethodHandle"

    move-object/from16 v8, v21

    move-object/from16 v13, v23

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v21, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    new-instance v22, Lnet/bytebuddy/utility/JavaType;

    const/16 v26, 0xb

    const/16 v28, 0x1

    const-class v29, Ljava/lang/Object;

    new-array v8, v2, [Ljava/lang/reflect/Type;

    const-string v25, "METHOD_HANDLES"

    const-string v27, "java.lang.invoke.MethodHandles"

    move-object/from16 v24, v22

    move-object/from16 v30, v8

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v22, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES:Lnet/bytebuddy/utility/JavaType;

    new-instance v24, Lnet/bytebuddy/utility/JavaType;

    const/16 v10, 0xc

    const/16 v12, 0x11

    const/4 v14, 0x3

    new-array v13, v14, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v7}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    aput-object v8, v13, v2

    invoke-virtual {v4}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v13, v9

    const-class v8, Ljava/io/Serializable;

    invoke-static {v8}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    aput-object v8, v13, v3

    const-string v9, "METHOD_TYPE"

    const-string v11, "java.lang.invoke.MethodType"

    move-object/from16 v8, v24

    move-object/from16 v25, v13

    move-object/from16 v13, v23

    const/16 v23, 0x3

    move-object/from16 v14, v25

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v24, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    new-instance v25, Lnet/bytebuddy/utility/JavaType;

    const/16 v28, 0xd

    const/16 v30, 0x19

    const-class v31, Ljava/lang/Object;

    new-array v8, v2, [Ljava/lang/reflect/Type;

    const-string v27, "METHOD_HANDLES_LOOKUP"

    const-string v29, "java.lang.invoke.MethodHandles$Lookup"

    move-object/from16 v26, v25

    move-object/from16 v32, v8

    invoke-direct/range {v26 .. v32}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v25, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    new-instance v26, Lnet/bytebuddy/utility/JavaType;

    const/16 v34, 0xe

    const/16 v36, 0x401

    const-class v37, Ljava/lang/Object;

    new-array v8, v2, [Ljava/lang/reflect/Type;

    const-string v33, "CALL_SITE"

    const-string v35, "java.lang.invoke.CallSite"

    move-object/from16 v32, v26

    move-object/from16 v38, v8

    invoke-direct/range {v32 .. v38}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v26, Lnet/bytebuddy/utility/JavaType;->CALL_SITE:Lnet/bytebuddy/utility/JavaType;

    new-instance v27, Lnet/bytebuddy/utility/JavaType;

    const/16 v40, 0xf

    const/16 v42, 0x401

    sget-object v43, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const/4 v8, 0x1

    new-array v9, v8, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v7}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    aput-object v8, v9, v2

    const-string v39, "VAR_HANDLE"

    const-string v41, "java.lang.invoke.VarHandle"

    move-object/from16 v38, v27

    move-object/from16 v44, v9

    invoke-direct/range {v38 .. v44}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v27, Lnet/bytebuddy/utility/JavaType;->VAR_HANDLE:Lnet/bytebuddy/utility/JavaType;

    new-instance v35, Lnet/bytebuddy/utility/JavaType;

    const/16 v30, 0x10

    const/16 v32, 0x11

    const-class v33, Ljava/lang/Object;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/reflect/Type;

    const-class v8, Ljava/lang/reflect/AnnotatedElement;

    aput-object v8, v9, v2

    const-string v29, "PARAMETER"

    const-string v31, "java.lang.reflect.Parameter"

    move-object/from16 v28, v35

    move-object/from16 v34, v9

    invoke-direct/range {v28 .. v34}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v35, Lnet/bytebuddy/utility/JavaType;->PARAMETER:Lnet/bytebuddy/utility/JavaType;

    new-instance v28, Lnet/bytebuddy/utility/JavaType;

    const/16 v38, 0x11

    const/16 v40, 0x401

    const-class v41, Ljava/lang/reflect/AccessibleObject;

    new-array v8, v3, [Ljava/lang/reflect/Type;

    const-class v9, Ljava/lang/reflect/Member;

    aput-object v9, v8, v2

    const-class v9, Ljava/lang/reflect/GenericDeclaration;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string v37, "EXECUTABLE"

    const-string v39, "java.lang.reflect.Executable"

    move-object/from16 v36, v28

    move-object/from16 v42, v8

    invoke-direct/range {v36 .. v42}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v28, Lnet/bytebuddy/utility/JavaType;->EXECUTABLE:Lnet/bytebuddy/utility/JavaType;

    new-instance v29, Lnet/bytebuddy/utility/JavaType;

    const/16 v44, 0x12

    const/16 v46, 0x11

    const-class v47, Ljava/lang/Object;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/reflect/Type;

    const-class v8, Ljava/lang/reflect/AnnotatedElement;

    aput-object v8, v9, v2

    const-string v43, "MODULE"

    const-string v45, "java.lang.Module"

    move-object/from16 v42, v29

    move-object/from16 v48, v9

    invoke-direct/range {v42 .. v48}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v29, Lnet/bytebuddy/utility/JavaType;->MODULE:Lnet/bytebuddy/utility/JavaType;

    new-instance v30, Lnet/bytebuddy/utility/JavaType;

    const/16 v38, 0x13

    const/16 v40, 0x11

    const-class v41, Ljava/lang/Object;

    new-array v8, v2, [Ljava/lang/reflect/Type;

    const-string v37, "CONSTANT_BOOTSTRAPS"

    const-string v39, "java.lang.invoke.ConstantBootstraps"

    move-object/from16 v36, v30

    move-object/from16 v42, v8

    invoke-direct/range {v36 .. v42}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v30, Lnet/bytebuddy/utility/JavaType;->CONSTANT_BOOTSTRAPS:Lnet/bytebuddy/utility/JavaType;

    new-instance v31, Lnet/bytebuddy/utility/JavaType;

    const/16 v44, 0x14

    const/16 v46, 0x401

    const-class v47, Ljava/lang/Object;

    new-array v8, v2, [Ljava/lang/reflect/Type;

    const-string v43, "RECORD"

    const-string v45, "java.lang.Record"

    move-object/from16 v42, v31

    move-object/from16 v48, v8

    invoke-direct/range {v42 .. v48}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v31, Lnet/bytebuddy/utility/JavaType;->RECORD:Lnet/bytebuddy/utility/JavaType;

    new-instance v32, Lnet/bytebuddy/utility/JavaType;

    const/16 v38, 0x15

    const/16 v40, 0x1

    const-class v41, Ljava/lang/Object;

    new-array v8, v2, [Ljava/lang/reflect/Type;

    const-string v37, "OBJECT_METHODS"

    const-string v39, "java.lang.runtime.ObjectMethods"

    move-object/from16 v36, v32

    move-object/from16 v42, v8

    invoke-direct/range {v36 .. v42}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v32, Lnet/bytebuddy/utility/JavaType;->OBJECT_METHODS:Lnet/bytebuddy/utility/JavaType;

    new-instance v33, Lnet/bytebuddy/utility/JavaType;

    const/16 v10, 0x16

    new-array v14, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    const-string v9, "ACCESS_CONTROL_CONTEXT"

    const-string v11, "java.security.AccessControlContext"

    move-object/from16 v8, v33

    move-object v13, v15

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v33, Lnet/bytebuddy/utility/JavaType;->ACCESS_CONTROL_CONTEXT:Lnet/bytebuddy/utility/JavaType;

    const/16 v8, 0x17

    new-array v8, v8, [Lnet/bytebuddy/utility/JavaType;

    aput-object v7, v8, v2

    const/4 v2, 0x1

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v23

    const/4 v0, 0x4

    aput-object v5, v8, v0

    const/4 v0, 0x5

    aput-object v6, v8, v0

    const/4 v0, 0x6

    aput-object v16, v8, v0

    const/4 v0, 0x7

    aput-object v17, v8, v0

    const/16 v0, 0x8

    aput-object v19, v8, v0

    const/16 v0, 0x9

    aput-object v20, v8, v0

    const/16 v0, 0xa

    aput-object v21, v8, v0

    const/16 v0, 0xb

    aput-object v22, v8, v0

    const/16 v0, 0xc

    aput-object v24, v8, v0

    const/16 v0, 0xd

    aput-object v25, v8, v0

    const/16 v0, 0xe

    aput-object v26, v8, v0

    const/16 v0, 0xf

    aput-object v27, v8, v0

    const/16 v0, 0x10

    aput-object v35, v8, v0

    const/16 v0, 0x11

    aput-object v28, v8, v0

    const/16 v0, 0x12

    aput-object v29, v8, v0

    const/16 v0, 0x13

    aput-object v30, v8, v0

    const/16 v0, 0x14

    aput-object v31, v8, v0

    const/16 v0, 0x15

    aput-object v32, v8, v0

    const/16 v0, 0x16

    aput-object v33, v8, v0

    sput-object v8, Lnet/bytebuddy/utility/JavaType;->$VALUES:[Lnet/bytebuddy/utility/JavaType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    if-nez p5, :cond_0

    sget-object p5, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    invoke-static {p5}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p5

    :goto_0
    move-object v5, p5

    new-instance v6, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v6, p6}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeList$Generic;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "[",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")V"
        }
    .end annotation

    if-nez p5, :cond_0

    sget-object p5, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    invoke-interface {p5}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p5

    :goto_0
    move-object v5, p5

    new-instance v6, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    invoke-direct {v6, p6}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeList$Generic;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeList$Generic;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Lnet/bytebuddy/description/type/TypeList$Generic;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lnet/bytebuddy/utility/JavaType$LatentTypeWithSimpleName;

    invoke-direct {p1, p3, p4, p5, p6}, Lnet/bytebuddy/utility/JavaType$LatentTypeWithSimpleName;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    iput-object p1, p0, Lnet/bytebuddy/utility/JavaType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method private doIsAvailable()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "available"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->available:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->available:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/utility/JavaType;->available:Ljava/lang/Boolean;

    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/JavaType;
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/JavaType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/JavaType;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->$VALUES:[Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/JavaType;

    return-object v0
.end method


# virtual methods
.method public getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-direct {p0}, Lnet/bytebuddy/utility/JavaType;->doIsAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public load()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "loaded"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->loaded:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->loaded:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/utility/JavaType;->loaded:Ljava/lang/Class;

    :goto_1
    return-object v0
.end method

.method public loadAsDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method
