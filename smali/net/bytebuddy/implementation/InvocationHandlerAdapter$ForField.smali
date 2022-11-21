.class public Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;
.super Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/InvocationHandlerAdapter$WithoutPrivilegeConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForField"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;-><init>(Ljava/lang/String;ZZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    iput-object p6, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    return-void
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 9

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    new-instance v8, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->fieldName:Ljava/lang/String;

    iget-boolean v3, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->cached:Z

    iget-boolean v4, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->privileged:Z

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;-><init>(Ljava/lang/String;ZZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    invoke-direct {v0, v8, p1}, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;-><init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/implementation/Implementation$Composable;)V

    return-object v0
.end method

.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 10

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/Implementation;

    new-instance v9, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->fieldName:Ljava/lang/String;

    iget-boolean v4, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->cached:Z

    iget-boolean v5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->privileged:Z

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;-><init>(Ljava/lang/String;ZZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/Implementation$Compound;-><init>([Lnet/bytebuddy/implementation/Implementation;)V

    return-object v0
.end method

.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->fieldName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;->getField()Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    const-class v1, Ljava/lang/reflect/InvocationHandler;

    invoke-interface {p1, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;->getField()Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;-><init>(Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;Lnet/bytebuddy/description/field/FieldDescription;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;->getField()Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not declare a type that is assignable to invocation handler"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find a field named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    check-cast p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object p1, p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 8

    new-instance v7, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->cached:Z

    iget-boolean v3, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->privileged:Z

    iget-boolean v4, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->returning:Z

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;-><init>(Ljava/lang/String;ZZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    return-object v7
.end method

.method public bridge synthetic withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/Implementation;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1
.end method

.method public withPrivilegedLookup()Lnet/bytebuddy/implementation/InvocationHandlerAdapter$AssignerConfigurable;
    .locals 8

    new-instance v7, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->cached:Z

    iget-boolean v4, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->returning:Z

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    const/4 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;-><init>(Ljava/lang/String;ZZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    return-object v7
.end method

.method public withoutMethodCache()Lnet/bytebuddy/implementation/InvocationHandlerAdapter$WithoutPrivilegeConfiguration;
    .locals 8

    new-instance v7, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->fieldName:Ljava/lang/String;

    iget-boolean v3, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->privileged:Z

    iget-boolean v4, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->returning:Z

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;-><init>(Ljava/lang/String;ZZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    return-object v7
.end method
