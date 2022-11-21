.class public final synthetic Lcom/prineside/tdi2/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt2/r;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/utils/ObjectRetriever;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/g1;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    return-void
.end method


# virtual methods
.method public final a(Lj3/a;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/g1;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->j(Lcom/prineside/tdi2/utils/ObjectRetriever;Lj3/a;)V

    return-void
.end method
