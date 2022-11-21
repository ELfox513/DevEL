.class public interface abstract Lnet/bytebuddy/implementation/Implementation$Target;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;,
        Lnet/bytebuddy/implementation/Implementation$Target$Factory;
    }
.end annotation


# virtual methods
.method public abstract getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract getOriginType()Lnet/bytebuddy/description/type/TypeDefinition;
.end method

.method public abstract invokeDefault(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
.end method

.method public abstract invokeDefault(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
.end method

.method public abstract invokeDominant(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
.end method

.method public abstract invokeSuper(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
.end method
