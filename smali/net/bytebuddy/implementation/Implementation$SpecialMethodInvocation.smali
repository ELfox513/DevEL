.class public interface abstract Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SpecialMethodInvocation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Simple;,
        Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$AbstractBase;,
        Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;
    }
.end annotation


# virtual methods
.method public abstract getMethodDescription()Lnet/bytebuddy/description/method/MethodDescription;
.end method

.method public abstract getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract withCheckedCompatibilityTo(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
.end method
