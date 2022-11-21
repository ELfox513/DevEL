.class public interface abstract Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Binding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;,
        Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;
    }
.end annotation


# virtual methods
.method public abstract isBound()Z
.end method

.method public abstract make(Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
