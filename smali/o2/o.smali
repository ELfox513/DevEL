.class public final synthetic Lo2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/b$a;


# instance fields
.field public final synthetic a:Lo2/p;

.field public final synthetic b:Li2/m;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lo2/p;Li2/m;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/o;->a:Lo2/p;

    iput-object p2, p0, Lo2/o;->b:Li2/m;

    iput-wide p3, p0, Lo2/o;->c:J

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lo2/o;->a:Lo2/p;

    iget-object v1, p0, Lo2/o;->b:Li2/m;

    iget-wide v2, p0, Lo2/o;->c:J

    invoke-static {v0, v1, v2, v3}, Lo2/p;->e(Lo2/p;Li2/m;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
