.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Compiler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default;,
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$AbstractBase;,
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "Safe initialization is implied."
    value = {
        "IC_SUPERCLASS_USES_SUBCLASS_DURING_INITIALIZATION"
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default;->forJavaHierarchy()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    return-void
.end method


# virtual methods
.method public abstract compile(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
.end method

.method public abstract compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
.end method

.method public abstract compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract compile(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
