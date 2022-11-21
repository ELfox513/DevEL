.class public Lcom/badlogic/gdx/Graphics$Monitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Graphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Monitor"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final virtualX:I

.field public final virtualY:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/Graphics$Monitor;->virtualX:I

    iput p2, p0, Lcom/badlogic/gdx/Graphics$Monitor;->virtualY:I

    iput-object p3, p0, Lcom/badlogic/gdx/Graphics$Monitor;->name:Ljava/lang/String;

    return-void
.end method
