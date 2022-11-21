.class public final Lr4/hs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Lr4/js0;


# direct methods
.method public constructor <init>(Lr4/js0;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lr4/hs0;->d:Lr4/js0;

    iput-object p2, p0, Lr4/hs0;->a:Ljava/util/List;

    iput-object p3, p0, Lr4/hs0;->b:Ljava/lang/String;

    iput-object p4, p0, Lr4/hs0;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lr4/hs0;->c:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to parse gmsg params for: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lr4/hs0;->d:Lr4/js0;

    iget-object v1, p0, Lr4/hs0;->a:Ljava/util/List;

    iget-object v2, p0, Lr4/hs0;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lr4/js0;->j(Lr4/js0;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
