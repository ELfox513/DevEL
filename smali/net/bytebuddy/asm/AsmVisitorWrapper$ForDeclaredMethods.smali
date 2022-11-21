.class public Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/AsmVisitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForDeclaredMethods"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;,
        Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;,
        Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final readerFlags:I

.field private final writerFlags:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    iput p2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    iput p3, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public constructor(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;",
            ">;)",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->invokable(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p1

    return-object p1
.end method

.method public varargs constructor(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;[",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;",
            ")",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->constructor(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p1

    return-object p1
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
    iget v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    check-cast p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    iget v3, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    iget v3, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

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

    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    add-int/2addr v0, v1

    return v0
.end method

.method public invokable(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;",
            ">;)",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    new-instance v2, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;

    invoke-direct {v2, p1, p2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)V

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    iget v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    invoke-direct {v0, p1, p2, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public varargs invokable(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;[",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;",
            ")",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->invokable(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p1

    return-object p1
.end method

.method public mergeReader(I)I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    or-int/2addr p1, v0

    return p1
.end method

.method public mergeWriter(I)I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    or-int/2addr p1, v0

    return p1
.end method

.method public method(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;",
            ">;)",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isMethod()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->invokable(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p1

    return-object p1
.end method

.method public varargs method(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;[",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;",
            ")",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->method(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p1

    return-object p1
.end method

.method public readerFlags(I)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 4

    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    iget v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    iget v3, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    or-int/2addr p1, v3

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;II)",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;"
        }
    .end annotation

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;

    move-object v3, p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v9, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;-><init>(Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;II)V

    return-object v9
.end method

.method public writerFlags(I)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    iget v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    or-int/2addr p1, v2

    iget v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>(Ljava/util/List;II)V

    return-object v0
.end method
