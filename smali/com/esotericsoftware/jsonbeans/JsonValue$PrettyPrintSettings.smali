.class public Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/jsonbeans/JsonValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrettyPrintSettings"
.end annotation


# instance fields
.field public outputType:Lcom/esotericsoftware/jsonbeans/OutputType;

.field public singleLineColumns:I

.field public wrapNumericArrays:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
