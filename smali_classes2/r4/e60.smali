.class public final Lr4/e60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/v;


# instance fields
.field public a:Z

.field public final synthetic b:Z

.field public final synthetic c:Lr4/gt;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lr4/g60;ZLr4/gt;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-boolean p2, p0, Lr4/e60;->b:Z

    iput-object p3, p0, Lr4/e60;->c:Lr4/gt;

    iput-object p4, p0, Lr4/e60;->d:Ljava/util/Map;

    iput-object p5, p0, Lr4/e60;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/e60;->a:Z

    return-void
.end method


# virtual methods
.method public final R(Z)V
    .locals 3

    iget-boolean v0, p0, Lr4/e60;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lr4/e60;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/e60;->c:Lr4/gt;

    check-cast v0, Lr4/cf1;

    invoke-interface {v0}, Lr4/cf1;->a()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/e60;->a:Z

    iget-object v0, p0, Lr4/e60;->d:Ljava/util/Map;

    iget-object v1, p0, Lr4/e60;->e:Ljava/util/Map;

    const-string v2, "event_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lr4/e60;->c:Lr4/gt;

    check-cast p1, Lr4/e80;

    iget-object v0, p0, Lr4/e60;->d:Ljava/util/Map;

    const-string v1, "openIntentAsync"

    invoke-interface {p1, v1, v0}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final x(I)V
    .locals 0

    return-void
.end method
