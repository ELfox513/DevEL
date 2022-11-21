.class public Ln1/u$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ly1/c;",
            "Ln1/u$d;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ln1/u;


# direct methods
.method public constructor <init>(Ln1/u;)V
    .locals 0

    iput-object p1, p0, Ln1/u$c;->b:Ln1/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ln1/u$c;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ln1/u;Ln1/u$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ln1/u$c;-><init>(Ln1/u;)V

    return-void
.end method


# virtual methods
.method public a(Ly1/c;)Ln1/u$d;
    .locals 2

    iget-object v0, p0, Ln1/u$c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln1/u$d;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln1/u$c;->b:Ln1/u;

    invoke-static {v0}, Ln1/u;->a(Ln1/u;)Ln1/u$e;

    move-result-object v0

    invoke-virtual {v0}, Ln1/u$e;->a()I

    move-result v0

    new-instance v1, Ln1/u$d;

    invoke-direct {v1, p1, v0}, Ln1/u$d;-><init>(Ly1/c;I)V

    iget-object v0, p0, Ln1/u$c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ln1/u$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln1/u$c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
