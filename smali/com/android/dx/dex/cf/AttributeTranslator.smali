.class Lcom/android/dx/dex/cf/AttributeTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnnotations(Lq1/b;)Lv1/c;
    .locals 2

    invoke-static {p0}, Lcom/android/dx/dex/cf/AttributeTranslator;->getAnnotations0(Lq1/b;)Lv1/c;

    move-result-object v0

    invoke-static {p0}, Lcom/android/dx/dex/cf/AttributeTranslator;->getSignature(Lq1/b;)Lv1/a;

    move-result-object v1

    invoke-static {p0}, Lcom/android/dx/dex/cf/AttributeTranslator;->getSourceDebugExtension(Lq1/b;)Lv1/a;

    move-result-object p0

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lv1/c;->A(Lv1/c;Lv1/a;)Lv1/c;

    move-result-object v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {v0, p0}, Lv1/c;->A(Lv1/c;Lv1/a;)Lv1/c;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static getAnnotations0(Lq1/b;)Lv1/c;
    .locals 2

    const-string v0, "RuntimeVisibleAnnotations"

    invoke-interface {p0, v0}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object v0

    check-cast v0, Lm1/n;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-interface {p0, v1}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object p0

    check-cast p0, Lm1/l;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    sget-object p0, Lv1/c;->b:Lv1/c;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lm1/t;->a()Lv1/c;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    invoke-virtual {v0}, Lm1/t;->a()Lv1/c;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lm1/t;->a()Lv1/c;

    move-result-object v0

    invoke-virtual {p0}, Lm1/t;->a()Lv1/c;

    move-result-object p0

    invoke-static {v0, p0}, Lv1/c;->B(Lv1/c;Lv1/c;)Lv1/c;

    move-result-object p0

    return-object p0
.end method

.method public static getClassAnnotations(Lp1/f;Lcom/android/dx/dex/cf/CfOptions;)Lv1/c;
    .locals 5

    invoke-virtual {p0}, Lp1/f;->p()Lx1/e0;

    move-result-object v0

    invoke-virtual {p0}, Lp1/f;->c()Lq1/b;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lq1/b;)Lv1/c;

    move-result-object v2

    invoke-static {v1}, Lcom/android/dx/dex/cf/AttributeTranslator;->translateEnclosingMethod(Lq1/b;)Lv1/a;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-static {v0, v1, v4}, Lcom/android/dx/dex/cf/AttributeTranslator;->translateInnerClasses(Lx1/e0;Lq1/b;Z)Lv1/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v2, v0}, Lv1/c;->B(Lv1/c;Lv1/c;)Lv1/c;

    move-result-object v2
    :try_end_0
    .catch Lb2/t; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object p1, p1, Lcom/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "warning: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    invoke-static {v2, v3}, Lv1/c;->A(Lv1/c;Lv1/a;)Lv1/c;

    move-result-object v2

    :cond_2
    invoke-virtual {p0}, Lp1/f;->a()I

    move-result p1

    invoke-static {p1}, Lw1/a;->f(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/android/dx/dex/cf/AttributeTranslator;->translateAnnotationDefaults(Lp1/f;)Lv1/a;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {v2, p0}, Lv1/c;->A(Lv1/c;Lv1/a;)Lv1/c;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method public static getExceptions(Lq1/g;)Ly1/e;
    .locals 1

    invoke-interface {p0}, Lq1/f;->getAttributes()Lq1/b;

    move-result-object p0

    const-string v0, "Exceptions"

    invoke-interface {p0, v0}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object p0

    check-cast p0, Lm1/g;

    if-nez p0, :cond_0

    sget-object p0, Ly1/b;->a:Ly1/b;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lm1/g;->a()Ly1/e;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodAnnotations(Lq1/g;)Lv1/c;
    .locals 2

    invoke-interface {p0}, Lq1/f;->getAttributes()Lq1/b;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lq1/b;)Lv1/c;

    move-result-object v0

    invoke-static {p0}, Lcom/android/dx/dex/cf/AttributeTranslator;->getExceptions(Lq1/g;)Ly1/e;

    move-result-object p0

    invoke-interface {p0}, Ly1/e;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/dx/dex/file/AnnotationUtils;->makeThrows(Ly1/e;)Lv1/a;

    move-result-object p0

    invoke-static {v0, p0}, Lv1/c;->A(Lv1/c;Lv1/a;)Lv1/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getParameterAnnotations(Lq1/g;)Lv1/d;
    .locals 2

    invoke-interface {p0}, Lq1/f;->getAttributes()Lq1/b;

    move-result-object p0

    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-interface {p0, v0}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object v0

    check-cast v0, Lm1/o;

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-interface {p0, v1}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object p0

    check-cast p0, Lm1/m;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    sget-object p0, Lv1/d;->a:Lv1/d;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lm1/w;->a()Lv1/d;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    invoke-virtual {v0}, Lm1/w;->a()Lv1/d;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lm1/w;->a()Lv1/d;

    move-result-object v0

    invoke-virtual {p0}, Lm1/w;->a()Lv1/d;

    move-result-object p0

    invoke-static {v0, p0}, Lv1/d;->x(Lv1/d;Lv1/d;)Lv1/d;

    move-result-object p0

    return-object p0
.end method

.method private static getSignature(Lq1/b;)Lv1/a;
    .locals 1

    const-string v0, "Signature"

    invoke-interface {p0, v0}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object p0

    check-cast p0, Lm1/p;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lm1/p;->a()Lx1/d0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/dx/dex/file/AnnotationUtils;->makeSignature(Lx1/d0;)Lv1/a;

    move-result-object p0

    return-object p0
.end method

.method private static getSourceDebugExtension(Lq1/b;)Lv1/a;
    .locals 1

    const-string v0, "SourceDebugExtension"

    invoke-interface {p0, v0}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object p0

    check-cast p0, Lm1/q;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lm1/q;->a()Lx1/d0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/dx/dex/file/AnnotationUtils;->makeSourceDebugExtension(Lx1/d0;)Lv1/a;

    move-result-object p0

    return-object p0
.end method

.method private static translateAnnotationDefaults(Lp1/f;)Lv1/a;
    .locals 7

    invoke-virtual {p0}, Lp1/f;->p()Lx1/e0;

    move-result-object v0

    invoke-virtual {p0}, Lp1/f;->m()Lq1/h;

    move-result-object p0

    invoke-interface {p0}, Lq1/h;->size()I

    move-result v1

    new-instance v2, Lv1/a;

    sget-object v3, Lv1/b;->p:Lv1/b;

    invoke-direct {v2, v0, v3}, Lv1/a;-><init>(Lx1/e0;Lv1/b;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lq1/h;->get(I)Lq1/g;

    move-result-object v4

    invoke-interface {v4}, Lq1/f;->getAttributes()Lq1/b;

    move-result-object v5

    const-string v6, "AnnotationDefault"

    invoke-interface {v5, v6}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object v5

    check-cast v5, Lm1/a;

    if-eqz v5, :cond_0

    new-instance v3, Lv1/e;

    invoke-interface {v4}, Lq1/f;->d()Lx1/a0;

    move-result-object v4

    invoke-virtual {v4}, Lx1/a0;->x()Lx1/d0;

    move-result-object v4

    invoke-virtual {v5}, Lm1/a;->a()Lx1/a;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lv1/e;-><init>(Lx1/d0;Lx1/a;)V

    invoke-virtual {v2, v3}, Lv1/a;->x(Lv1/e;)V

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {v2}, Lb2/o;->setImmutable()V

    invoke-static {v2}, Lcom/android/dx/dex/file/AnnotationUtils;->makeAnnotationDefault(Lv1/a;)Lv1/a;

    move-result-object p0

    return-object p0
.end method

.method private static translateEnclosingMethod(Lq1/b;)Lv1/a;
    .locals 2

    const-string v0, "EnclosingMethod"

    invoke-interface {p0, v0}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object p0

    check-cast p0, Lm1/f;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lm1/f;->a()Lx1/e0;

    move-result-object v0

    invoke-virtual {p0}, Lm1/f;->b()Lx1/a0;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v0}, Lcom/android/dx/dex/file/AnnotationUtils;->makeEnclosingClass(Lx1/e0;)Lv1/a;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Lx1/z;

    invoke-direct {v1, v0, p0}, Lx1/z;-><init>(Lx1/e0;Lx1/a0;)V

    invoke-static {v1}, Lcom/android/dx/dex/file/AnnotationUtils;->makeEnclosingMethod(Lx1/z;)Lv1/a;

    move-result-object p0

    return-object p0
.end method

.method private static translateInnerClasses(Lx1/e0;Lq1/b;Z)Lv1/c;
    .locals 9

    const-string v0, "InnerClasses"

    invoke-interface {p1, v0}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object p1

    check-cast p1, Lm1/h;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lm1/h;->a()Lm1/x;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move-object v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {p1, v4}, Lm1/x;->x(I)Lm1/x$a;

    move-result-object v6

    invoke-virtual {v6}, Lm1/x$a;->b()Lx1/e0;

    move-result-object v7

    invoke-virtual {v7, p0}, Lx1/e0;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v5, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lm1/x$a;->d()Lx1/e0;

    move-result-object v6

    invoke-virtual {p0, v6}, Lx1/e0;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v7}, Lx1/e0;->x()Ly1/c;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez v5, :cond_4

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Lv1/c;

    invoke-direct {v0}, Lv1/c;-><init>()V

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lm1/x$a;->c()Lx1/d0;

    move-result-object v1

    invoke-virtual {v5}, Lm1/x$a;->a()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/dx/dex/file/AnnotationUtils;->makeInnerClass(Lx1/d0;I)Lv1/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv1/c;->x(Lv1/a;)V

    if-eqz p2, :cond_6

    invoke-virtual {v5}, Lm1/x$a;->d()Lx1/e0;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v5}, Lm1/x$a;->d()Lx1/e0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/dx/dex/file/AnnotationUtils;->makeEnclosingClass(Lx1/e0;)Lv1/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lv1/c;->x(Lv1/a;)V

    goto :goto_2

    :cond_5
    new-instance p1, Lb2/t;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring InnerClasses attribute for an anonymous inner class\n("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") that doesn\'t come with an\nassociated EnclosingMethod attribute. This class was probably produced by a\ncompiler that did not target the modern .class file format. The recommended\nsolution is to recompile the class from source, using an up-to-date compiler\nand without specifying any \"-target\" type options. The consequence of ignoring\nthis warning is that reflective operations on this class will incorrectly\nindicate that it is *not* an inner class."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lb2/t;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    if-eqz p1, :cond_8

    new-instance p0, Ly1/b;

    invoke-direct {p0, p1}, Ly1/b;-><init>(I)V

    :goto_3
    if-ge v3, p1, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly1/c;

    invoke-virtual {p0, v3, p2}, Ly1/b;->I(ILy1/c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lb2/o;->setImmutable()V

    invoke-static {p0}, Lcom/android/dx/dex/file/AnnotationUtils;->makeMemberClasses(Ly1/e;)Lv1/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lv1/c;->x(Lv1/a;)V

    :cond_8
    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method
