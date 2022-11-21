.class public Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForAdvice"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

.field private final adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final baseLocalVariableLength:I

.field private localVariableLengthPadding:I

.field private stackSizePadding:I


# direct methods
.method public constructor <init>(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;I)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->a:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iput p3, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->baseLocalVariableLength:I

    return-void
.end method


# virtual methods
.method public recordMaxima(II)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->a:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    iget v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->stackSizePadding:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requireStackSize(I)V

    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->a:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->baseLocalVariableLength:I

    add-int/2addr p2, v0

    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->localVariableLengthPadding:I

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requireLocalVariableLength(I)V

    return-void
.end method

.method public requireLocalVariableLength(I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->a:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requireLocalVariableLength(I)V

    return-void
.end method

.method public requireLocalVariableLengthPadding(I)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->localVariableLengthPadding:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->localVariableLengthPadding:I

    return-void
.end method

.method public requireStackSize(I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->a:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requireStackSize(I)V

    return-void
.end method

.method public requireStackSizePadding(I)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->stackSizePadding:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->stackSizePadding:I

    return-void
.end method
