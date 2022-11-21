.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForComponentType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType$AnnotatedParameterizedType;
    }
.end annotation


# static fields
.field private static final ANNOTATED_PARAMETERIZED_TYPE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType$AnnotatedParameterizedType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType$AnnotatedParameterizedType;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;->a(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType$AnnotatedParameterizedType;

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;->ANNOTATED_PARAMETERIZED_TYPE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType$AnnotatedParameterizedType;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic resolve()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->resolve()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/reflect/AnnotatedElement;
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;->ANNOTATED_PARAMETERIZED_TYPE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType$AnnotatedParameterizedType;

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType$AnnotatedParameterizedType;->isInstance(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object p1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType$AnnotatedParameterizedType;->getAnnotatedGenericComponentType(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/reflect/AnnotatedElement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object p1
.end method
