.class public interface abstract Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AmbiguityResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Compound;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "Safe initialization is implied."
    value = {
        "IC_SUPERCLASS_USES_SUBCLASS_DURING_INITIALIZATION"
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Compound;

    const/4 v1, 0x5

    new-array v1, v1, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Compound;-><init>([Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;->DEFAULT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    return-void
.end method


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
.end method
