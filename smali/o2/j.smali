.class public final synthetic Lo2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/b$a;


# instance fields
.field public final synthetic a:Lo2/p;

.field public final synthetic b:Li2/m;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lo2/p;Li2/m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/j;->a:Lo2/p;

    iput-object p2, p0, Lo2/j;->b:Li2/m;

    iput p3, p0, Lo2/j;->c:I

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo2/j;->a:Lo2/p;

    iget-object v1, p0, Lo2/j;->b:Li2/m;

    iget v2, p0, Lo2/j;->c:I

    invoke-static {v0, v1, v2}, Lo2/p;->g(Lo2/p;Li2/m;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
