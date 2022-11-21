.class public Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;
.super Lnet/bytebuddy/asm/AsmVisitorWrapper$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/AsmVisitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForDeclaredFields"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$DispatchingVisitor;,
        Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;,
        Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;->entries:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;->entries:Ljava/util/List;

    return-object p0
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
    iget-object v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;->entries:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;

    iget-object p1, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;->entries:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public field(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;",
            ">;)",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;

    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;->entries:Ljava/util/List;

    new-instance v2, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;

    invoke-direct {v2, p1, p2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)V

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public varargs field(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;[",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;",
            ")",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;->field(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;->entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 0
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

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p5}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-interface {p3, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p4, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$DispatchingVisitor;

    invoke-direct {p4, p0, p2, p1, p3}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$DispatchingVisitor;-><init>(Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V

    return-object p4
.end method
