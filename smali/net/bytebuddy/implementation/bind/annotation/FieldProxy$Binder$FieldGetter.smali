.class public Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldGetter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

.field private final methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/MethodAccessorFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iput-object p3, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;)Lnet/bytebuddy/description/field/FieldDescription;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    return-object p0
.end method

.method public static synthetic b(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;)Lnet/bytebuddy/implementation/MethodAccessorFactory;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    return-object p0
.end method

.method public static synthetic c(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    return-object p0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 1

    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;-><init>(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;Lnet/bytebuddy/implementation/Implementation$Target;)V

    return-object v0
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
