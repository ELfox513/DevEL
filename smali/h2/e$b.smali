.class public final Lh2/e$b;
.super Lh2/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lh2/k$b;

.field public b:Lh2/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh2/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lh2/k;
    .locals 4

    new-instance v0, Lh2/e;

    iget-object v1, p0, Lh2/e$b;->a:Lh2/k$b;

    iget-object v2, p0, Lh2/e$b;->b:Lh2/a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lh2/e;-><init>(Lh2/k$b;Lh2/a;Lh2/e$a;)V

    return-object v0
.end method

.method public b(Lh2/a;)Lh2/k$a;
    .locals 0

    iput-object p1, p0, Lh2/e$b;->b:Lh2/a;

    return-object p0
.end method

.method public c(Lh2/k$b;)Lh2/k$a;
    .locals 0

    iput-object p1, p0, Lh2/e$b;->a:Lh2/k$b;

    return-object p0
.end method
