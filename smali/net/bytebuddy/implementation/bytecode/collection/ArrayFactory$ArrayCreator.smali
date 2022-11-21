.class public interface abstract Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ArrayCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForReferenceType;,
        Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;
    }
.end annotation


# static fields
.field public static final ARRAY_CREATION_SIZE_CHANGE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;->ARRAY_CREATION_SIZE_CHANGE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method


# virtual methods
.method public abstract getStorageOpcode()I
.end method
