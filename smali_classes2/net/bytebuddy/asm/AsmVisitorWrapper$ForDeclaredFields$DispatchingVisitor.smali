.class public Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$DispatchingVisitor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DispatchingVisitor"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$DispatchingVisitor;->a:Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;

    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$DispatchingVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p4, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$DispatchingVisitor;->fields:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    iget-object p4, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$DispatchingVisitor;->fields:Ljava/util/Map;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p3, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$DispatchingVisitor;->a:Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;

    invoke-static {p3}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;->a(Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;

    invoke-virtual {p4, p2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->matches(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$DispatchingVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p4, p5, p2, p1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/jar/asm/FieldVisitor;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method
