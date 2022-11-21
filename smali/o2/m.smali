.class public final synthetic Lo2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/b$a;


# instance fields
.field public final synthetic a:Lo2/p;

.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Li2/m;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lo2/p;Ljava/lang/Iterable;Li2/m;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/m;->a:Lo2/p;

    iput-object p2, p0, Lo2/m;->b:Ljava/lang/Iterable;

    iput-object p3, p0, Lo2/m;->c:Li2/m;

    iput-wide p4, p0, Lo2/m;->d:J

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lo2/m;->a:Lo2/p;

    iget-object v1, p0, Lo2/m;->b:Ljava/lang/Iterable;

    iget-object v2, p0, Lo2/m;->c:Li2/m;

    iget-wide v3, p0, Lo2/m;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lo2/p;->d(Lo2/p;Ljava/lang/Iterable;Li2/m;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
