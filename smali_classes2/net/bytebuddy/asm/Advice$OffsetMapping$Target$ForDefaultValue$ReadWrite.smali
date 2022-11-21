.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadWrite;
.super Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadWrite"
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadWrite;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-void
.end method


# virtual methods
.method public resolveIncrement(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    return-object p1
.end method

.method public resolveWrite()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/Removal;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    return-object v0
.end method
