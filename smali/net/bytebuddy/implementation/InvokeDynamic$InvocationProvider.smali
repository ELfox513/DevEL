.class public interface abstract Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InvocationProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Target;
    }
.end annotation


# virtual methods
.method public abstract appendArgument(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
.end method

.method public abstract appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;",
            ">;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;"
        }
    .end annotation
.end method

.method public abstract make(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Target;
.end method

.method public abstract prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withNameProvider(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
.end method

.method public abstract withReturnTypeProvider(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
.end method

.method public abstract withoutArguments()Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
.end method
