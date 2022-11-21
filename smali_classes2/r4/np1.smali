.class public final synthetic Lr4/np1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# instance fields
.field public final a:Lr4/qp1;

.field public final b:Lr4/cs0;


# direct methods
.method public constructor <init>(Lr4/qp1;Lr4/cs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/np1;->a:Lr4/qp1;

    iput-object p2, p0, Lr4/np1;->b:Lr4/cs0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lr4/np1;->a:Lr4/qp1;

    iget-object v1, p0, Lr4/np1;->b:Lr4/cs0;

    check-cast p1, Lr4/cs0;

    invoke-virtual {v0, v1, p1, p2}, Lr4/qp1;->c(Lr4/cs0;Lr4/cs0;Ljava/util/Map;)V

    return-void
.end method
