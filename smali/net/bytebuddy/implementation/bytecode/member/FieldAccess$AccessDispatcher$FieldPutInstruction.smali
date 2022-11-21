.class public Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldPutInstruction;
.super Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FieldPutInstruction"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic b:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;)V
    .locals 1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldPutInstruction;->b:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;-><init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$1;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldPutInstruction;->b:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldPutInstruction;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldPutInstruction;->b:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getOpcode()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldPutInstruction;->b:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    iget-object v0, v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->a:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->f(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldPutInstruction;->b:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolveSize(Lnet/bytebuddy/implementation/bytecode/StackSize;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p1

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldPutInstruction;->b:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    iget-object v1, v1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->a:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->d(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;)I

    move-result v1

    add-int/2addr p1, v1

    mul-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v0
.end method
