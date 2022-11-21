.class public interface abstract Lnet/bytebuddy/asm/MemberSubstitution$Substitution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Substitution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Chain;,
        Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;,
        Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;,
        Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;,
        Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/ByteCodeElement;Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
