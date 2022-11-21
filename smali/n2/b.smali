.class public final synthetic Ln2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/b$a;


# instance fields
.field public final synthetic a:Ln2/c;

.field public final synthetic b:Li2/m;

.field public final synthetic c:Li2/h;


# direct methods
.method public synthetic constructor <init>(Ln2/c;Li2/m;Li2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/b;->a:Ln2/c;

    iput-object p2, p0, Ln2/b;->b:Li2/m;

    iput-object p3, p0, Ln2/b;->c:Li2/h;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ln2/b;->a:Ln2/c;

    iget-object v1, p0, Ln2/b;->b:Li2/m;

    iget-object v2, p0, Ln2/b;->c:Li2/h;

    invoke-static {v0, v1, v2}, Ln2/c;->c(Ln2/c;Li2/m;Li2/h;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
