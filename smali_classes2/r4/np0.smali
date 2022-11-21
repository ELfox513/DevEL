.class public final synthetic Lr4/np0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/po0;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lr4/po0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/np0;->a:Lr4/po0;

    iput-object p2, p0, Lr4/np0;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/np0;->a:Lr4/po0;

    iget-object v1, p0, Lr4/np0;->b:Ljava/util/Map;

    sget v2, Lr4/xp0;->H:I

    const-string v2, "onGcacheInfoEvent"

    invoke-interface {v0, v2, v1}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
