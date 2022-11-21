.class public Lnet/bytebuddy/implementation/FixedValue$ForValue;
.super Lnet/bytebuddy/implementation/FixedValue;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FixedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "value"


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-direct {p0, v0, v1, p1, p2}, Lnet/bytebuddy/implementation/FixedValue$ForValue;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/FixedValue;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    iput-object p4, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->name:Ljava/lang/String;

    iput-object p3, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/implementation/FixedValue$ForValue;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lnet/bytebuddy/implementation/FixedValue$ForValue;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;-><init>(Lnet/bytebuddy/implementation/FixedValue$ForValue;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/FixedValue$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/FixedValue;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->name:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/implementation/FixedValue$ForValue;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FixedValue$ForValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/FixedValue;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 4

    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->name:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    const/16 v3, 0x1049

    invoke-direct {v0, v1, v3, v2}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withAuxiliaryField(Lnet/bytebuddy/description/field/FieldDescription$Token;Ljava/lang/Object;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForValue;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->name:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/bytebuddy/implementation/FixedValue$ForValue;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
