.class public final synthetic Lr4/yk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/al2;

.field public final b:Lr4/dr2;

.field public final c:Lr4/m41;


# direct methods
.method public constructor <init>(Lr4/al2;Lr4/dr2;Lr4/m41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yk2;->a:Lr4/al2;

    iput-object p2, p0, Lr4/yk2;->b:Lr4/dr2;

    iput-object p3, p0, Lr4/yk2;->c:Lr4/m41;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 5

    iget-object v0, p0, Lr4/yk2;->b:Lr4/dr2;

    iget-object v1, p0, Lr4/yk2;->c:Lr4/m41;

    check-cast p1, Lr4/bp2;

    iput-object p1, v0, Lr4/dr2;->b:Lr4/bp2;

    iget-object v0, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v0, v0, Lr4/ap2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/no2;

    iget-object v3, v3, Lr4/no2;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "FirstPartyRenderer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr4/m41;->d(Lr4/h83;)Lr4/h83;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    :goto_2
    return-object p1
.end method
