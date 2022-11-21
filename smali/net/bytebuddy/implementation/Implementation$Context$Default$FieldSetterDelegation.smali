.class public Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;
.super Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Context$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldSetterDelegation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/modifier/Visibility;Lnet/bytebuddy/description/field/FieldDescription;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/modifier/Visibility;)V

    iput-object p3, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;Lnet/bytebuddy/description/field/FieldDescription;)V
    .locals 1

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetter;

    invoke-direct {v0, p1, p4, p2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetter;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription;Ljava/lang/String;)V

    invoke-virtual {p3}, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object p1

    invoke-direct {p0, v0, p1, p4}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/modifier/Visibility;Lnet/bytebuddy/description/field/FieldDescription;)V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 4

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x3

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-static {p3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->allArgumentsOf(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->prependThisReference()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->write()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->VOID:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    new-instance p2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    check-cast p1, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;

    iget-object p1, p1, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public with(Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/modifier/Visibility;->expandTo(Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object p1

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/modifier/Visibility;Lnet/bytebuddy/description/field/FieldDescription;)V

    return-object v0
.end method
