.class public interface abstract Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParameterBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFieldBinding;,
        Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "Safe initialization is implied."
    value = {
        "IC_SUPERCLASS_USES_SUBCLASS_DURING_INITIALIZATION"
    }
.end annotation


# static fields
.field public static final DEFAULTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/Argument$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Argument$Binder;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/Origin$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Origin$Binder;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/This$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/This$Binder;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Super$Binder;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/Default$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Default$Binder;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/SuperMethod$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/SuperMethod$Binder;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/StubValue$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/StubValue$Binder;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/Empty$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Empty$Binder;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;->DEFAULTS:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract bind(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TT;>;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Target;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
            ")",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getHandledType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method
