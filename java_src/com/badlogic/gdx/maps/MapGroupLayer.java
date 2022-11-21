package com.badlogic.gdx.maps;
/* loaded from: classes.dex */
public class MapGroupLayer extends MapLayer {

    /* renamed from: l */
    public MapLayers f5247l = new MapLayers();

    public MapLayers getLayers() {
        return this.f5247l;
    }

    @Override // com.badlogic.gdx.maps.MapLayer
    public void invalidateRenderOffset() {
        super.invalidateRenderOffset();
        for (int i = 0; i < this.f5247l.size(); i++) {
            this.f5247l.get(i).invalidateRenderOffset();
        }
    }
}
