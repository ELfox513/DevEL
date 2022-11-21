.class public final Lv3/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/d;


# instance fields
.field public final synthetic a:Lj5/j;

.field public final synthetic b:Lv3/s;


# direct methods
.method public constructor <init>(Lv3/s;Lj5/j;)V
    .locals 0

    iput-object p1, p0, Lv3/l1;->b:Lv3/s;

    iput-object p2, p0, Lv3/l1;->a:Lj5/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj5/i;)V
    .locals 1

    iget-object p1, p0, Lv3/l1;->b:Lv3/s;

    invoke-static {p1}, Lv3/s;->g(Lv3/s;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lv3/l1;->a:Lj5/j;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
