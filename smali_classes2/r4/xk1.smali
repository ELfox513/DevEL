.class public final synthetic Lr4/xk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/qt0;


# instance fields
.field public final a:Lr4/yk1;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lr4/yk1;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/xk1;->a:Lr4/yk1;

    iput-object p2, p0, Lr4/xk1;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final R(Z)V
    .locals 2

    iget-object v0, p0, Lr4/xk1;->a:Lr4/yk1;

    iget-object v1, p0, Lr4/xk1;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lr4/yk1;->c(Ljava/util/Map;Z)V

    return-void
.end method
