.class public interface abstract Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Chain$Step$Resolution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Chain$Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Resolution"
.end annotation


# virtual methods
.method public abstract getResultType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end method

.method public abstract getStackManipulation()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
