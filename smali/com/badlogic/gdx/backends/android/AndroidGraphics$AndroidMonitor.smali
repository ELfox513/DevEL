.class Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidMonitor;
.super Lcom/badlogic/gdx/Graphics$Monitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/AndroidGraphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidMonitor"
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/backends/android/AndroidGraphics;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidGraphics;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidMonitor;->a:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/Graphics$Monitor;-><init>(IILjava/lang/String;)V

    return-void
.end method
