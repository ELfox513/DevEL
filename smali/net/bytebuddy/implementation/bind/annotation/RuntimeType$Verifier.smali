.class public final Lnet/bytebuddy/implementation/bind/annotation/RuntimeType$Verifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/RuntimeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Verifier"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static check(Lnet/bytebuddy/description/annotation/AnnotationSource;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p0

    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/RuntimeType;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->of(Z)Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-result-object p0

    return-object p0
.end method
