.class public final synthetic Lo2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/b$a;


# instance fields
.field public final synthetic a:Lp2/c;


# direct methods
.method public synthetic constructor <init>(Lp2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/i;->a:Lp2/c;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo2/i;->a:Lp2/c;

    invoke-interface {v0}, Lp2/c;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
