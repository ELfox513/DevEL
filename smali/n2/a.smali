.class public final synthetic Ln2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln2/c;

.field public final synthetic b:Li2/m;

.field public final synthetic d:Lf2/h;

.field public final synthetic k:Li2/h;


# direct methods
.method public synthetic constructor <init>(Ln2/c;Li2/m;Lf2/h;Li2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/a;->a:Ln2/c;

    iput-object p2, p0, Ln2/a;->b:Li2/m;

    iput-object p3, p0, Ln2/a;->d:Lf2/h;

    iput-object p4, p0, Ln2/a;->k:Li2/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ln2/a;->a:Ln2/c;

    iget-object v1, p0, Ln2/a;->b:Li2/m;

    iget-object v2, p0, Ln2/a;->d:Lf2/h;

    iget-object v3, p0, Ln2/a;->k:Li2/h;

    invoke-static {v0, v1, v2, v3}, Ln2/c;->b(Ln2/c;Li2/m;Lf2/h;Li2/h;)V

    return-void
.end method
