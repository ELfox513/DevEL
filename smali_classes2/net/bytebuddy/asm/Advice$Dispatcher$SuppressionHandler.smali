.class public interface abstract Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SuppressionHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$NoOp;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;
    }
.end annotation


# virtual methods
.method public abstract bind(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;
.end method
