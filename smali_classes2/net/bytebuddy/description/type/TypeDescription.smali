.class public interface abstract Lnet/bytebuddy/description/type/TypeDescription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDefinition;
.implements Lnet/bytebuddy/description/ByteCodeElement;
.implements Lnet/bytebuddy/description/TypeVariableSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;,
        Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;,
        Lnet/bytebuddy/description/type/TypeDescription$Latent;,
        Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;,
        Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;,
        Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic;
    }
.end annotation


# static fields
.field public static final ARRAY_INTERFACES:Lnet/bytebuddy/description/type/TypeList$Generic;

.field public static final CLASS:Lnet/bytebuddy/description/type/TypeDescription;

.field public static final OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

.field public static final STRING:Lnet/bytebuddy/description/type/TypeDescription;

.field public static final THROWABLE:Lnet/bytebuddy/description/type/TypeDescription;

.field public static final UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field

.field public static final VOID:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription;->STRING:Lnet/bytebuddy/description/type/TypeDescription;

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription;->THROWABLE:Lnet/bytebuddy/description/type/TypeDescription;

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Cloneable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/io/Serializable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription;->ARRAY_INTERFACES:Lnet/bytebuddy/description/type/TypeList$Generic;

    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method


# virtual methods
.method public abstract asBoxed()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract asUnboxed()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract getActualModifiers(Z)I
.end method

.method public abstract getCanonicalName()Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getComponentType()Lnet/bytebuddy/description/type/TypeDescription;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
.end method

.method public abstract getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getDefaultValue()Ljava/lang/Object;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getInheritedAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
.end method

.method public abstract getInnerClassCount()I
.end method

.method public abstract getLongSimpleName()Ljava/lang/String;
.end method

.method public abstract getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract getNestMembers()Lnet/bytebuddy/description/type/TypeList;
.end method

.method public abstract getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getPermittedSubtypes()Lnet/bytebuddy/description/type/TypeList;
.end method

.method public abstract getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSimpleName()Ljava/lang/String;
.end method

.method public abstract isAnnotationReturnType()Z
.end method

.method public abstract isAnnotationValue()Z
.end method

.method public abstract isAnnotationValue(Ljava/lang/Object;)Z
.end method

.method public abstract isAnonymousType()Z
.end method

.method public abstract isAssignableFrom(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z
.end method

.method public abstract isAssignableTo(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
.end method

.method public abstract isCompileTimeConstant()Z
.end method

.method public abstract isInHierarchyWith(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract isInHierarchyWith(Lnet/bytebuddy/description/type/TypeDescription;)Z
.end method

.method public abstract isInnerClass()Z
.end method

.method public abstract isInstance(Ljava/lang/Object;)Z
.end method

.method public abstract isLocalType()Z
.end method

.method public abstract isMemberType()Z
.end method

.method public abstract isNestHost()Z
.end method

.method public abstract isNestMateOf(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z
.end method

.method public abstract isNestedClass()Z
.end method

.method public abstract isPackageType()Z
.end method

.method public abstract isPrimitiveWrapper()Z
.end method

.method public abstract isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z
.end method

.method public abstract isSealed()Z
.end method
