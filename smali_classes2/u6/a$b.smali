.class public final Lu6/a$b;
.super Lu6/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lu6/f;

.field public e:Lu6/d$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu6/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu6/d;
    .locals 8

    new-instance v7, Lu6/a;

    iget-object v1, p0, Lu6/a$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lu6/a$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lu6/a$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lu6/a$b;->d:Lu6/f;

    iget-object v5, p0, Lu6/a$b;->e:Lu6/d$b;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lu6/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu6/f;Lu6/d$b;Lu6/a$a;)V

    return-object v7
.end method

.method public b(Lu6/f;)Lu6/d$a;
    .locals 0

    iput-object p1, p0, Lu6/a$b;->d:Lu6/f;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lu6/d$a;
    .locals 0

    iput-object p1, p0, Lu6/a$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lu6/d$a;
    .locals 0

    iput-object p1, p0, Lu6/a$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lu6/d$b;)Lu6/d$a;
    .locals 0

    iput-object p1, p0, Lu6/a$b;->e:Lu6/d$b;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lu6/d$a;
    .locals 0

    iput-object p1, p0, Lu6/a$b;->a:Ljava/lang/String;

    return-object p0
.end method
