.class public final synthetic Lr4/kk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# instance fields
.field public final a:Lr4/pk1;


# direct methods
.method public constructor <init>(Lr4/pk1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/kk1;->a:Lr4/pk1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lr4/kk1;->a:Lr4/pk1;

    check-cast p1, Lr4/cs0;

    invoke-virtual {v0, p1, p2}, Lr4/pk1;->e(Lr4/cs0;Ljava/util/Map;)V

    return-void
.end method
